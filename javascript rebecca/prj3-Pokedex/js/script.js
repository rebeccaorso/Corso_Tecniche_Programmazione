const URL="https://pokeapi.co/api/v2/pokemon/";
const URL2= "https://pokeapi.co/api/v2/pokemon/1/";
const URL3= "http://localhost:3000/pokemon";

let demo = document.querySelector("#demo");
let btn = document.querySelector("#btn");
let check=document.querySelector("#check");

fetch(URL)
.then(data=>{return data.json()})
.then(response =>{
    console.log(response);

    
    response.results.forEach(pokemon =>{
        demo.innerHTML += "<li><input type='checkbox'>" + pokemon.name + "</li>"; 
    })

    function contaChecked() {
        let conta = 0;
    
    
        for (let i = 0; i <= 3; i++) {
          let poke = results[i].checked;
          if (poke.checked > 3) {
            console.log("You can select maximum of 3 checkbox.");
            alert("You can select maximum of " + limit + " checkbox.");
                    this.checked = false;
          }
        }
        return conta;
      }
})



// fetch(URL2)
// .then(data=>{return data.json()})
// .then(response =>{
//     console.log(response);

//     response.sprites.forEach(dettagli =>{
//         demo.innerHTML += "<li> " + dettagli.front_default + "</li>";
//     })

// })




// function scegliPokemon(){
//     let pokemonScelto = {
//         name: results.name,
//         img: front_default,


//         fetch(URL, {
//             method:"POST",
//             headers:{"Content-type": "application/json"},
//             body:JSON.stringify(pokemonScelto)
//         })
//         .then(data =>{return data.json()})
//         .then(response =>{
//             console.log();
//         } )
    
//     }
// }


btn.addEventListener("click", scegliPokemon);

front_default