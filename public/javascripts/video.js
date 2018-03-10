(function(){
	"use strict";

var menuIcon = document.querySelector("#menuIcon");
var menu = document.querySelector("#mainNav");

function hideShowMenu(){
  //console.log("hide show menu");
  if(menu.style.display === 'block'){
        menu.style.display = 'none'; //hide menu
  }else{
        menu.style.display = 'block';} //show menu
}

menuIcon.addEventListener("click", hideShowMenu, false);

	})();

	function fetchData() {
		let url = "api/" + this.id;
		
	}
