function moltiplica(num1, num2){
    return num1 * num2
}

let demo = document.getElementById("demo");

function calcola(){
    // recupero il value del campo imput, cioè quello che scrive l'utente
    let num1 = document.getElementById("num1").value;
    let num2 = document.getElementById("num2").value;

    demo.innerHTML = moltiplica(num1, num2);
}

let btn = document.getElementById("btn");

// in questo caso la funzione non ha la parentesi tonde
btn.addEventListener("click", calcola);