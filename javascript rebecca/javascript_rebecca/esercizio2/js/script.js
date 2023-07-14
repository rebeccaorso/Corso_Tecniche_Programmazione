function Item(todo, data){
    this.todo = todo;
    this.data = data;

    this.info = function(){
        let info = "Devi " + this.todo + " il " + this.data;
        return info;
    }
}

function aggiungiLista(){
    let todoItem = document.getElementById("todoItem").value;
    let data = document.getElementById("data").value;

    if(todoItem == "" || data == ""){
            listaItem.innerHTML = "Hai dimenticato di scrivere qualcosa.";
        }else {

            let itemTodo = new Item(todoItem, data);
    
        console.log(itemTodo);
        agenda.push(itemTodo);
        stampa();
        pulisci();
}
}

function stampa(){
        listaItem.innerHTML = "";
    for (let i = 0; i < agenda.length; i++) {
        let item = agenda[i];
        listaItem.innerHTML += "<li>" + item.info() + "</li>";
    }
}

function pulisci(){
    document.getElementById("todoItem").value = "";
    document.getElementById("data").value = "";
}


agenda=[];

let listaItem = document.getElementById("listaItem");
let btn = document.getElementById("btn");
btn.addEventListener("click", aggiungiLista);


