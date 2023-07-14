let listaPokemon=[
    {
        nome: "Pikachu",
        img: "./img/pikachu.jpg",
        tipo: "elettrico",
        descrizione: "Se lo tocchi ci resti secco"

    },
    {
        nome: "Bulbasaur",
        img: "./img/bulbasaur.jpg",
        tipo: "erba",
        descrizione: "Un pokemon che cresce a vista d'occhio"
    },
    {
        nome: "Charmender",
        img: "./img/charmender.jpg",
        tipo: "fuoco",
        descrizione: "Chiamata ai pompieri incorporata"
    }
];

    
let listaPoke = document.querySelector("#listaPoke");
let cartaPokemon = document.querySelector("cartaPokemon");


/**
 * 
 * @param {listaPokemon} pokemons 
 */
    function mostraLista(pokemons){
        pokemons.forEach(pokemon => {
            let li = document.createElement("li");
            li.textContent=pokemon.nome;

            let pulsMostra = document.createElement("button");
            pulsMostra.textContent="Mostra card";

            pulsMostra.addEventListener("click", function(){
                mostraSingolaCard(pokemon);
            });

            li.appendChild(pulsMostra);
            listaPoke.appendChild(li);
        });
    }

/**
 * 
 * @param {listaPokemon[i]} pokemon 
 */
    function mostraSingolaCard(pokemon){
        console.log(pokemon);

        let card = `
        <h2>${pokemon.nome}</h2>
        <img src="${pokemon.img}">
        <p>${pokemon.tipo}</p>
        <p>${pokemon.descrizione}</p>
        <button id="btnChiudi">Chiudi</button>`;

        cartaPokemon.innerHTML = card;

        let btnChiudi = document.querySelector('#btnChiudi')

        btnChiudi.addEventListener("click", function(){
            cartaPokemon.innerHTML="";
        })
    }


    mostraLista(listaPokemon);

      
