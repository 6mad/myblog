var htar1=document.getElementsByClassName("h1");
var htar2=document.getElementsByClassName("h2");
var mtar1=document.getElementsByClassName("m1");
var mtar2=document.getElementsByClassName("m2");
var star1=document.getElementsByClassName("s1");
var star2=document.getElementsByClassName("s2");
setInterval(dian,1000);
function dian(){
    t =new Date();
h=t.getHours();
h2=h%10;h1=(h-h2)/10;
 m=t.getMinutes();
 m2=m%10; m1=(m-m2)/10;
 s=t.getSeconds();
 s2=s%10; s1=(s-s2)/10;
var d =document.getElementById("dian");
    if(d.style.borderColor = "red")
    setTimeout(function(){d.style.borderColor = "#f0f"},400);
var d1 =document.getElementById("dian1");
    if(d1.style.borderColor = "red")
    setTimeout(function(){d1.style.borderColor = "#f0f"},400);
function timefu( shu,hta){
    switch(shu){
    case 0: hta.firstElementChild.className="zi";break;
    case 1: hta.firstElementChild.className="zi1";break;
    case 2: hta.firstElementChild.className="zi2";break;
    case 3: hta.firstElementChild.className="zi3";break;
    case 4: hta.firstElementChild.className="zi4";break;
    case 5: hta.firstElementChild.className="zi5";break;
    case 6: hta.firstElementChild.className="zi6";break;
    case 7: hta.firstElementChild.className="zi7";break;
    case 8: hta.firstElementChild.className="zi8";break;
    case 9: hta.firstElementChild.className="zi9";break;
}}
timefu(h1,htar1[0]);
timefu(h2,htar2[0]);
timefu(m1,mtar1[0]);
timefu(m2,mtar2[0]);
timefu(s1,star1[0]);
timefu(s2,star2[0]);
};