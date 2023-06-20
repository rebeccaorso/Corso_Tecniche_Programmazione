
// let serie = [];

// for(i = 0; i < 5; i++) {
//     let casuale = Math.ceil(Math.random()* 90);
//     if (serie.indexOf(casuale) == -1) {
//         serie.push(casuale);
//     }else{
//         i--
//     }

// }    

// let output = document.getElementById("numEst");
// output.textContent = serie.join (", ");
    
////////////////////////////////////////////////



function estrai() {

    demo.innerHTML= "";
    let numeriDaEstrarre = document.getElementById("numeriDaEstrarre").value;
    
    let numeriEstratti = [];
    let numGiri = 0;


    if(numeriDaEstrarre < 0 || numeriDaEstrarre > 10){
        demo.innerHTML = "metti un valore da 1 a 10";

    }else{

        for(i = 0; i < numeriDaEstrarre; i++) {

            numGiri++

            let numero = Math.ceil(Math.random()* 90);

            if(numeriEstratti.indexOf(numero) == -1) {
                numeriEstratti.push(numero)
            }else{
                i--;//fatti un altro giro
            }
        }
        demo.innerHTML += numeriEstratti;
    }
    console.log(numGiri);
    console.log(numeriEstratti);    
}


    let demo = document.getElementById("demo");
    let btn = document.getElementById("btn");
    btn.addEventListener("click", estrai);