const URL = "http://localhost:3000/users";




function regUser() {
    let nome = document.querySelector("#nome");
let cognome = document.querySelector("#cognome");
let email = document.querySelector("#email");
let codFis = document.querySelector("#codFis");
let tipo = document.querySelector("#tipo");
let formReg = document.querySelector("#formReg");

    let nuovoUser = {
        nome: nome.value,
        cognome: cognome.value,
        email: email.value,
        codFis: codFis.value,
        tipo: tipo.value
    }

    fetch(URL, {
        method:"POST",
        headers:{"Content-type": "application/json"},
        body:JSON.stringify(nuovoUser)
    })
    .then(data =>{return data.json()})
    .then(response =>{
        console.log(response.statusCode, "Registrazione avvenuta con successo");
    } )
}


formReg.addEventListener("submit", regUser);