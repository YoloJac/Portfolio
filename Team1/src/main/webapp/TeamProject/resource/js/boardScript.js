
var modals = document.getElementsByClassName("modal");

var btns = document.getElementsByClassName("btn1");

var spanes = document.getElementsByClassName("close");
var funcs = [];
 

function Modal(num) {
  return function() {
   
    btns[num].onclick =  function() {
        modals[num].style.display = "block";
        console.log(num);
    };
 
   
    spanes[num].onclick = function() {
        modals[num].style.display = "none";
    };
  };
}
 

for(var i = 0; i < btns.length; i++) {
  funcs[i] = Modal(i);
}
 

for(var j = 0; j < btns.length; j++) {
  funcs[j]();
}
 
function validateForm(form){
	if(form.content.value == ""){
		alert("내용을 입력하세요.")
		form.content.focus();
		return false;
	}
}

function deletePosts(){
	let confirmed = confirm("정말로 삭제하시겠어요?");
	
	if(!confirmed){
		return false;
	}
}