//FETCH

const URL="https://reqres.in/api/users"; //endpoint

let nomePrimaPersona = "";
//Metodo che sto applicando  è il metodo GET
fetch(URL)
.then(data=>{return data.json()})
.then(response =>{
    console.log(response);
    // console.log(response.data[0].first_name);

    nomePrimaPersona = response.data[0].first_name;
    console.log("il nome della prima persona è " + nomePrimaPersona);

    stampaNellaPagina(response.data);
})

let demo = document.querySelector("#demo");

/**
 * 
 * @param {Array} listaDiPersone 
 */
function stampaNellaPagina(listaDiPersone){
listaDiPersone.forEach(persona =>{
    // demo.innerHTML += "<li>" + persona.first_name + " "+ persona.last_name + "</li>"
    demo.innerHTML += `<li> ${persona.first_name} ${persona.last_name} <img src='${persona.avatar}'> </li>`;
    
})
}