ourLogo = document.querySelector(".navFirst");
console.log(ourLogo);
ourLogo.addEventListener("click",function(){
  window.location="file:///C:/NYC_code_&_design_acad/day%202/bakery.project/index.html";
  console.log("awesome");
});


document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.dropdown-trigger');
  var options = {hover:true,coverTrigger:false};
  var instances = M.Dropdown.init(elems,options);
});

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.dropdown-trigger');
  var instances = M.Dropdown.init(elems);
});

// Setting up flavor buttons:
var chocolateButton = document.getElementById("chocolateButton");
var strawberyButton = document.getElementById ("strawberyButton");
var vanillaButton = document.getElementById("vanillaButton");

// Setting cakes by flavor:
var sortCakes = document.querySelector("#sortCakes");
var lemonCake = document.querySelector("#lemon");
var vanillaCakes = document.querySelectorAll("#vanilla");
var strawberyCakes = document.querySelectorAll("#strawberry");
// var pistachioCakes = document.querySelector("#pistachio");
var chocolateCakes = document.querySelectorAll("#chocolate");

// Make chocolate cakes appear:
 chocolateButton.addEventListener("click", function(){

  for(let i=0; i<vanillaCakes.length; i++) {
       strawberyCakes[i].style.display = "none";
  }
  for(let i=0; i<vanillaCakes.length; i++) {
    vanillaCakes[i].style.display = "none";
  }
  //  for(let i=0; i<pistachioCakes.length; i++) {
  //     pistachioCakes[i].style.display = "none";
  // }

  for(let i=0; i < chocolateCakes.length; i++) {
      chocolateCakes[i].style.display = "block";
  }

});

// Make strawbery button appear:
  strawberyButton.addEventListener("click", function(){
    // console.log(chocolateButton);
    for(let i=0; i<vanillaCakes.length; i++) {
         vanillaCakes[i].style.display = "none";
    }
    // lemonCake.style.display = "none";
    // for(let i=0; i<pistachioCakes.length; i++) {
    //   pistachioCakes[i].style.display = "none";
    // }

    for(let i=0; i < chocolateCakes.length; i++) {
        chocolateCakes[i].style.display = "none";
    }
    for(let i=0; i < strawberyCakes.length; i++) {
        strawberyCakes[i].style.display = "block";
    }
});


vanillaButton.addEventListener("click", function(){
  // console.log(chocolateButton);
  for(let i=0; i<strawberyCakes.length; i++) {
       strawberyCakes[i].style.display = "none";
  }
 
//   for(let i=0; i<pistachioCakes.length; i++) {
//     pistachioCakes[i].style.display = "none";
// }

  for(let i=0; i < chocolateCakes.length; i++) {
      chocolateCakes[i].style.display = "none";
  }
  for(let i=0; i < vanillaCakes.length; i++) {
      vanillaCakes[i].style.display = "block";
  }
});
