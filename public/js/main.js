// Vars

var nav = document.querySelector(".mainNav");
var hamburg = document.querySelector("#hamburg");
var addGarden = document.querySelector("#addGarden");
var add = document.querySelector("#add");
var gardenSection = document.querySelector("#gardens");
var gardenForm = document.querySelector("#gardenForm");
var gardenSub = document.querySelector("#gardenSub");
var indDate = document.querySelectorAll("#indDate");
var indGarden = document.querySelectorAll(".indGarden");
var gardenPlot = document.querySelector("#gardenPlot");
var options = document.querySelector(".options");
var veg = document.querySelectorAll(".veg");
var gardenA = document.querySelectorAll(".gardenA");
var shade = document.querySelector(".shade");
var shade2 = document.querySelector("#shade2");
var deleteForm = document.querySelectorAll(".deleteForm");
var deleteButton = document.querySelectorAll(".deleteButton");
var archiveButton = document.querySelectorAll(".archiveButton");
var scrollWork = document.querySelector("#scrollWork");
var listView = document.querySelector("#listView");
var list = document.querySelector("#list");
var exit = document.querySelector("#exit");
var eventFix = document.querySelectorAll(".eventFix");
var close = document.querySelector("#close");
var removePlant = document.querySelector("#removePlant");
var oneGarden = document.querySelector("#oneGarden");
var deleteGard = document.querySelectorAll(".deleteGard");
var verify = document.querySelector(".verify");
var restoreButtonFix = document.querySelectorAll(".restoreButton");
var slider = document.querySelector(".slider");
var plantDiv;
var target;
var gardenArr = [];
var submitIt = document.querySelector("#submitIt");
var h;
var w;
var jsonres;
var jsonres3;
var size;

var str = window.location.href;
var difStr = str.slice(29);

var htmlIdArr = [];
var names = [];
var quantity = [];
var quantString = [];
var gardenElementsArr = [];

var samp;

var height;

if (exit) {
  function exitForm() {
    shade.classList.remove("shadeAdd");
    gardenForm.style.right = "-3000px";
    gardenForm.style.opacity = "0";
  }
  exit.addEventListener("click", exitForm, false);
}

// Functions
function toggleNav() {
  nav.classList.toggle("toggleNav");
}

function addFunc() {
  // console.log(65456);
  shade.classList.add("shadeAdd");
  gardenForm.style.right = "0";
  gardenForm.style.opacity = "1";
}

// Event Listeners

if (nav) {
  hamburg.addEventListener("click", toggleNav, false);
}

if (addGarden) {
  addGarden.addEventListener("click", addFunc, false);
  add.addEventListener("click", addFunc, false);
}

if (gardenSub) {
  gardenSub.addEventListener(
    "click",
    function(e) {
      // console.log(e.target.className);
      var nameValue = document.querySelector("#gardenName").value;
      var heightValue = document.querySelector("#height").value;
      var widthValue = document.querySelector("#width").value;
      var errorId = document.querySelector("#errorId");

      var token = document.head.querySelector('meta[name="csrf-token"]').value;
      var postGarden = {
        name: nameValue,
        height: heightValue,
        width: widthValue,
        user_id: e.target.className,
        _token: token
      };

      // console.log(postGarden);
      // send contact form data.
      axios
        .post("home/newgarden", postGarden)
        .then(response => {
          // console.log(response);
          if (response.data == "All good") {
            window.location.href = "/home";
          } else if (
            response.data ==
            "Garden height and width must be a number greater than 0 ft"
          ) {
            errorId.innerHTML = response.data;
            errorId.style.opacity = "1";
          } else if (response.data == "Please fill in all fields") {
            errorId.innerHTML = response.data;
            errorId.style.opacity = "1";
          } else if (
            response.data == "Garden name must be less than 28 characters"
          ) {
            errorId.innerHTML = response.data;
            errorId.style.opacity = "1";
          }
        })
        .catch(error => {
          // console.log(error.response.data);
        });
    },
    false
  );
}

if (indDate) {
  for (var i = 0; i < indDate.length; i++) {
    var test = indDate[i].innerHTML;
    var rep = test.slice(0, 10);
    indDate[i].innerHTML = rep;
  }
}

if (gardenPlot) {
  function ajaxRes() {
    document.querySelector("#load").style.display = "block";
    xhr = new XMLHttpRequest();
    if (xhr === null) {
      alert("please update browser");
      return;
    }
    xhr.onreadystatechange = stateChangedJSON;
    xhr.open("GET", "req?id=" + difStr, true);
    // console.log(anotherUrl+'/garden/req?id='+difStr);
    xhr.send(null);

    function stateChangedJSON() {
      if (xhr.readyState === 4) {
        if (xhr.status === 200) {
          document.querySelector("#load").style.display = "none";
          document.querySelector("#plusMinus").style.display = "flex";
          jsonres = JSON.parse(xhr.responseText);
          // console.log(jsonres);
          h = jsonres[0][0].h_size;
          w = jsonres[0][0].w_size;
          for (var i = 0; i < jsonres[1].length; i++) {
            htmlIdArr.push("square" + jsonres[1][i].htmlId);
          }
          for (var i = 0; i < jsonres[1].length; i++) {
            names.push(jsonres[1][i].name);
          }
          for (var i = 0; i < jsonres[1].length; i++) {
            quantity.push(jsonres[1][i].plants2.quantity);
            quantString.push(jsonres[1][i].plants2.quantString);
          }
          makeGarden(h, w, jsonres);
        }
      }
    }
  }
  ajaxRes();
}

function makeGarden(h, w, jsonres) {
  if (window.innerWidth < 768) {
    for (var i = 0; i < w * h; i++) {
      gardenPlot.innerHTML +=
        '<div id="square' +
        i +
        '" class="plantDiv"><div class="plantFix"></div></div>';
      var plantDiv = document.querySelectorAll(".plantDiv");
      slider.value = 20 * 3;
      size = 20;
      gardenPlot.style.width = 20 * w + "vw";
      scrollWork.style.height = 20 * 6.5 + "vw";
      scrollWork.style.overflow = "auto";
      plantDiv[i].style.width = "20vw";
      plantDiv[i].style.height = "20vw";
    }
  } else if (window.innerWidth >= 768 && window.innerWidth <= 1025) {
    for (var i = 0; i < w * h; i++) {
      gardenPlot.innerHTML +=
        '<div id="square' +
        i +
        '" class="plantDiv"><div class="plantFix"></div></div>';
      var plantDiv = document.querySelectorAll(".plantDiv");
      slider.value = 10 * 3;
      size = 10;
      gardenPlot.style.width = 10 * w + "vw";
      scrollWork.style.overflow = "auto";
      scrollWork.style.height = "100vw";
      plantDiv[i].style.width = "10vw";
      plantDiv[i].style.height = "10vw";
    }
  } else if (window.innerWidth > 1026) {
    for (var i = 0; i < w * h; i++) {
      gardenPlot.innerHTML +=
        '<div id="square' +
        i +
        '" class="plantDiv"><div class="plantFix"></div></div>';
      plantDiv = document.querySelectorAll(".plantDiv");
      slider.value = 5 * 3;
      size = 5;
      scrollWork.style.overflow = "auto";
      gardenPlot.style.width = 5 * w + "vw";
      scrollWork.style.height = "35vw";
      plantDiv[i].style.width = "5vw";
      plantDiv[i].style.height = "5vw";
    }
  }

  for (var i = 0; i < plantDiv.length; i++) {
    if (htmlIdArr.indexOf(plantDiv[i].id) >= 0) {
      gardenElementsArr.push(plantDiv[i]);
    }
  }

  for (var i = 0; i < gardenElementsArr.length; i++) {
    gardenElementsArr[i].innerHTML +=
      '<img class="vegPic" src=' +
      globalUrl +
      "/" +
      names[i] +
      '.svg }}" /><p class="countImg"></p>';
  }

  var plantFix = document.querySelectorAll(".plantFix");
  var countNumber = document.querySelectorAll(".countImg");
  var number = document.querySelectorAll(".number");
  for (var i = 0; i < countNumber.length; i++) {
    // console.log(quantity);
    countNumber[i].innerHTML = quantString[i];
  }
  // countNumber[i].innerHTML = 2;

  function testerFun(e) {
    options.classList.add("optionsToggle");
    for (var i = 0; i < veg.length; i++) {
      veg[i].style.height = getComputedStyle(veg[i]).width;
    }
    target = e;
    submitIt.style.opacity = "1";
    submitIt.addEventListener("click", saveGarden, false);
  }

  for (var i = 0; i < plantDiv.length; i++) {
    plantDiv[i].addEventListener("click", testerFun, false);
  }

  gardenArr = jsonres[1];
}

if (close) {
  function closeFunc() {
    var plantFix = document.querySelectorAll(".plantFix");
    // for(var i = 0; i < plantFix.length; i++) {
    // 	plantFix[i].style.display = "block";
    // }
    options.classList.remove("optionsToggle");
  }
  close.addEventListener("click", closeFunc, false);
}

if (submitIt) {
}

if (listView) {
  function ajaxList() {
    xhr2 = new XMLHttpRequest();
    if (xhr2 === null) {
      alert("please update browser");
      return;
    }
    xhr2.onreadystatechange = stateChangedJSON;
    xhr2.open("GET", "listview/ajaxlist", true);
    xhr2.send(null);

    function stateChangedJSON() {
      if (xhr2.readyState === 4) {
        if (xhr2.status === 200) {
          var jsonres2 = JSON.parse(xhr2.responseText);
          makeList(jsonres2);
        }
      }
    }
  }
  ajaxList();
}

function makeList(jsonres2) {
  var listArr = [];
  var unique_array = [];
  var quantArr = [];
  var newQuant = [];
  var classify = [];
  var newClassify = [];
  var plantYield = [];
  var newYield = [];
  var count = {};

  for (var i = 0; i < jsonres2.length; i++) {
    listArr.push(jsonres2[i].name);
    quantArr.push(jsonres2[i].plants2.quantity);
    classify.push(jsonres2[i].plants2.classify);
    plantYield.push(jsonres2[i].plants2.yield);
  }

  function dumpDuplicates(arr) {
    for (var i = 0; i < listArr.length; i++) {
      if (unique_array.indexOf(listArr[i]) == -1) {
        unique_array.push(listArr[i]);
        newQuant.push(quantArr[i]);
        newClassify.push(classify[i]);
        newYield.push(plantYield[i]);
      }
    }
  }

  dumpDuplicates(listArr);

  for (var i = 0; i < listArr.length; i++) {
    var num = listArr[i];
    count[num] = count[num] ? count[num] + 1 : 1;
  }

  for (var i = 0; i < unique_array.length; i++) {
    list.innerHTML +=
      "<tr><td><img src='" +
      globalUrl +
      "/" +
      unique_array[i] +
      ".svg'></td><td class='middleRow'>" +
      count[unique_array[i]] * newQuant[i] +
      " " +
      newClassify[i] +
      "</td><td class='lastRow'>" +
      count[unique_array[i]] * newQuant[i] * newYield[i] +
      "</td></tr>";
  }
}

function addPlant(e) {
  // console.log(target.path[1].id);

  var updateArr = [];

  for (var i = 0; i < gardenArr.length; i++) {
    updateArr.push("square" + gardenArr[i].htmlId);
  }

  // console.log(updateArr);

  function updateTest(square_id) {
    return square_id == target.path[1].id;
  }

  var arrNum = updateArr.findIndex(updateTest);
  // console.log(arrNum);
  if (arrNum >= 0) {
    gardenArr.splice(arrNum, 1);
  }

  target.path[1].innerHTML = "";
  target.path[1].innerHTML = "<div class='plantFix'></div>";
  target.path[1].innerHTML +=
    "<img class='vegPic' src=" +
    globalUrl +
    "/" +
    e.target.parentNode.childNodes[5].innerHTML +
    ".svg />";
  options.classList.remove("optionsToggle");

  var htmlNum = target.path[1].id;
  htmlNum = htmlNum.slice(6);

  var square = {
    plant_id: e.target.parentNode.id,
    htmlId: htmlNum,
    name: e.target.parentNode.childNodes[5].innerHTML,
    garden_id: difStr
  };
  gardenArr.push(square);
  // console.log(gardenArr);
  // plantFix.style.display = "block";
}

for (var i = 0; i < eventFix.length; i++) {
  eventFix[i].addEventListener("click", addPlant, false);
}

if (removePlant) {
  removePlant.addEventListener(
    "click",
    function(e) {
      var testArr = [];
      target.path[1].innerHTML = '<div class="plantFix"></div>';
      var plantFix = document.querySelectorAll(".plantFix");
      // console.log(plantFix.length);
      // for(var i = 0; i < plantFix.length; i++) {
      // 	plantFix[i].style.display = "block";
      // }
      options.classList.remove("optionsToggle");

      for (var i = 0; i < gardenArr.length; i++) {
        testArr.push("square" + gardenArr[i].htmlId);
      }

      function filler(square_id) {
        return square_id == target.path[1].id;
      }

      var sliced = testArr.findIndex(filler);
      gardenArr.splice(sliced, 1);
      // console.log(gardenArr);
    },
    false
  );
}

function saveGarden(e) {
  var token = document.head.querySelector('meta[name="csrf-token"]').value;
  var test2 = {
    values: gardenArr,
    _token: token
  };
  // send contact form data.
  axios
    .post("test/save/" + difStr, test2)
    .then(response => {
      // console.log(response);
      if (response.data == "Saved") {
        submitIt.removeEventListener("click", saveGarden);
        submitIt.style.opacity = "0.4";
      }
    })
    .catch(error => {
      // console.log(error.response.data);
    });
}

if (submitIt) {
  submitIt.addEventListener("click", saveGarden, false);
}

var testt;

if (indGarden) {
  for (var i = 0; i < indGarden.length; i++) {
    indGarden[i].addEventListener("click", function(e) {
      // console.log(e);
      window.location.href = "garden/" + e.currentTarget.id;
    });
  }
}

if (deleteGard) {
  var deleted;
  var switchS;
  var zindexFix;
  for (var i = 0; i < deleteGard.length; i++) {
    deleteGard[i].addEventListener(
      "click",
      function(e) {
        e.stopPropagation();
        zindexFix = e.target;
        e.target.classList.toggle("deleteAdd");
        deleted = e.path[1].id;
        e.path[1].children[3].classList.toggle("hideForm");
        shade.classList.toggle("shadeAdd");
      },
      false
    );
  }

  for (var i = 0; i < deleteButton.length; i++) {
    deleteButton[i].addEventListener(
      "click",
      function(e) {
        e.stopPropagation();
        // console.log(e);
        switchS = e.path[1];
        e.path[1].style.display = "none";
        verify.style.display = "block";
        // window.location.href = "garden/delete/"+e.path[2].id;
      },
      false
    );
  }

  var yes = document.querySelectorAll(".yes");
  var no = document.querySelectorAll(".no");

  for (var i = 0; i < yes.length; i++) {
    yes[i].addEventListener("click", function(e) {
      window.location.href = "garden/delete/" + deleted;
    });
    no[i].addEventListener("click", function(e) {
      shade.classList.remove("shadeAdd");
      verify.style.display = "none";
      switchS.classList.remove("hideForm");
      switchS.style.display = "block";
      zindexFix.classList.remove("deleteAdd");
    });
  }

  for (var i = 0; i < archiveButton.length; i++) {
    archiveButton[i].addEventListener(
      "click",
      function(e) {
        e.stopPropagation();
        window.location.href = "garden/update/" + e.path[2].id;
      },
      false
    );
  }
}

if (restoreButtonFix) {
  for (var i = 0; i < restoreButtonFix.length; i++) {
    restoreButtonFix[i].addEventListener(
      "click",
      function(e) {
        // console.log(e.path[2].id);
        window.location.href = "garden/restore/" + e.path[2].id;
      },
      false
    );
  }
}

if (slider) {
  slider.addEventListener(
    "input",
    function() {
      // console.log(slider.value);
      var plantDiv = document.querySelectorAll(".plantDiv");
      // console.log(countNumber);
      var countNumber = document.querySelectorAll(".countImg");
      for (var i = 0; i < plantDiv.length; i++) {
        plantDiv[i].style.width = slider.value / 3 + "vw";
        plantDiv[i].style.height = slider.value / 3 + "vw";
      }
      var countNumber = document.querySelectorAll(".countImg");
      for (var i = 0; i < countNumber.length; i++) {
        countNumber[i].style.fontSize = slider.value / 3 / 6 + "vw";
      }
      gardenPlot.style.width = (slider.value / 3) * w + "vw";
    },
    false
  );
}
