
var modal5 = document.getElementById('simplemodal5');
var modalbtn5 = document.getElementById('modalbtn5');
var closebtn5 = document.getElementsByClassName('closebtn5')[0];




modalbtn5.addEventListener('click', openmodal5);

closebtn5.addEventListener('click', closemodal5);



window.addEventListener('click', outsideclick);


function openmodal5(){

    modal5.style.display='block';
}


function closemodal5(){

    modal5.style.display='none';
}


function outsideclick(e){
    if (e.target==modal5){

         modal5.style.display='none';

      

    }
}