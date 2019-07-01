
var modal = document.getElementById('simplemodal');
var modalbtn = document.getElementById('modalbtn');
var closebtn = document.getElementsByClassName('closebtn')[0];

var modal1 = document.getElementById('simplemodal1');
var modalbtn1 = document.getElementById('modalbtn1');
var closebtn1 = document.getElementsByClassName('closebtn1')[0];

var modal2 = document.getElementById('simplemodal2');
var modalbtn2 = document.getElementById('modalbtn2');
var closebtn2 = document.getElementsByClassName('closebtn2')[0];

var modal3 = document.getElementById('simplemodal3');
var modalbtn3 = document.getElementById('modalbtn3');
var closebtn3 = document.getElementsByClassName('closebtn3')[0];

var modal4 = document.getElementById('simplemodal4');
var modalbtn4 = document.getElementById('modalbtn4');
var closebtn4 = document.getElementsByClassName('closebtn4')[0];




modalbtn.addEventListener('click', openmodal);

modalbtn1.addEventListener('click', openmodal1);

modalbtn2.addEventListener('click', openmodal2);

modalbtn3.addEventListener('click', openmodal3);

modalbtn4.addEventListener('click', openmodal4);




closebtn.addEventListener('click', closemodal);

closebtn1.addEventListener('click', closemodal1);

closebtn2.addEventListener('click', closemodal2);

closebtn3.addEventListener('click', closemodal3);

closebtn4.addEventListener('click', closemodal4);



window.addEventListener('click', outsideclick);


function openmodal(){

    modal.style.display='block';
}

function openmodal1(){

    modal1.style.display='block';
}

function openmodal2(){

    modal2.style.display='block';
}

function openmodal3(){

    modal3.style.display='block';
}

function openmodal4(){

    modal4.style.display='block';
}





function closemodal(){

    modal.style.display='none';
}

function closemodal1(){

    modal1.style.display='none';
}
function closemodal2(){

    modal2.style.display='none';
}
function closemodal3(){

    modal3.style.display='none';
}

function closemodal4(){

    modal4.style.display='none';
}



function outsideclick(e){
    switch (e.target){

        case modal : modal.style.display='none';

        case modal1 : modal1.style.display='none';

        case modal2 : modal2.style.display='none';

        case modal3 : modal3.style.display='none';

        case modal4 : modal4.style.display='none';

      

    }
}