
function Lista(impegno, giorno){
    this.impegno = impegno;
    this.gorno = giorno;

    this.info = function(){
        let info = "Devi " + this.impegno + " il " + this.giorno;
        return info;
    }
}

function aggiungiImpegno(){
    let todoItem = document.getElementById("todoItem").value;
    let data = document.getElementById("data").value;

    // if(todoItem == "" || data == ""){
    //     listaItem.innerHTML = "Hai dimenticato di scrivere qualcosa.";
    // }else {
        let mioImpegno = new Lista(todoItem, data);

        console.log(mioImpegno);
        agenda.push(mioImpegno);
        stampa();

    // }
}


function stampa(){
    listaItem.innerHTML = "";
    agenda.forEach(lista =>{
        lista.innerHTML += lista.info()
    })
}



let agenda = [];
let listaItem = document.getElementById("listaItem");

// let btnAgg = document.getElementById("btn");
// btnAgg.addEventListener("click", aggiungiImpegno);
