let annoNascita = document.getElementById("annoNascita");
let annoN = prompt("Qual è il tuo anno di nascita?");
let annoCorrente = 2023;
let eta = annoCorrente - annoN;

annoNascita.textContent = "Caro utente hai " + eta + " anni";

if(eta <= 23){
     annoNascita.setAttribute ("class", "txtBlue");
    annoNascita.textContent += "Sei nato negli anni 2000";
}else{
     annoNascita.setAttribute ("class", "txtBlue");
    annoNascita.textContent += "Sei nato negli anni 90";
}

