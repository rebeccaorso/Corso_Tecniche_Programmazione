
//quanti numeri voglio estrarre, quante ruote voglio.
//estrai tutte




function estrai() {
let ruote = [
    "Bari",
    "cagliari",
    "firenze",
    "genova",
    "milano",
    "napoli",
    "palermo",
    "Roma",
    "torino",
    "venezia",
    "nazionale"
]
    for (let j = 0; j < 11; j++) {
        let numeriDaEstrarre = document.getElementById("numeriDaEstrarre").value;
        
        let numeriEstratti = [];
    
        if(numeriDaEstrarre < 0 || numeriDaEstrarre > 10){
            demo.innerHTML = "metti un valore da 1 a 10";
    
        }else{
    
            for(i = 0; i < numeriDaEstrarre; i++) {
                let numero = Math.ceil(Math.random()* 90);
                if(numeriEstratti.indexOf(numero) == -1) {
                    numeriEstratti.push(numero)
                }else{
                    i--;
                }
            }
        }
        demo.innerHTML += creaSerie(numeriEstratti);

        console.log(numeriEstratti);  
        
    }        
    }





        function estrairuota(){
            let serieDaEstrarre = document.getElementById("serieDaEstrarre").value;

            for (let i = 0; i < serieDaEstrarre; i++) {
                let numeriDaEstrarre = document.getElementById("numeriDaEstrarre").value;

                let numeriEstratti = [];

    

                for (let j = 0; j < numeriDaEstrarre; j++) {

                    let numero = Math.ceil(Math.random()* 90);
                    if(numeriEstratti.indexOf(numero) == -1) {
                        numeriEstratti.push(numero)
                }else{
                    j--;
                }
            }
            demo.innerHTML += creaSerie(numeriEstratti);
            demo.innerHTML += "<br>";
        }
    }


    /**
     * questa funzione crea la singola riga di numeri
     * @param {Array} numEstratti 
     */


    function creaSerie(numEstratti){
        let serie = "<p>"
        numEstratti.forEach(num => {
            serie += num + " ";
        });

     serie += "</p>";
     return serie
        }

    let demo = document.getElementById("demo");
    let btn = document.getElementById("btn");
    let btn2 = document.getElementById("btn2");
    btn.addEventListener("click", estrairuota);
    btn2.addEventListener("click", estrai);

    