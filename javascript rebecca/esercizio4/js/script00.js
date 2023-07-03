let text = document.querySelector("#text");
let carResidui = document.querySelector("#carResidui");
let demo = document.querySelector("#demo");
let btnInvia = document.querySelector("#btnInvia");

btnInvia.addEventListener("click", function(){
    twitta();
 })

text.addEventListener("keyup", contaCar);

function twitta(){
    let testoInserito;

    testoInserito=document.querySelector("#text").value;

    demo.innerHTML = "<p>" + testoInserito + "</p>";
}

function contaCar(){
    let testoInserito = document.querySelector("#text").value;

    let counter = (128 - testoInserito.length);

    carResidui.innerHTML = counter;

    if(counter <= 0){
let msg = document.querySelector("#text").value.substring(0, 128);
text.value =msg;
    }
}

