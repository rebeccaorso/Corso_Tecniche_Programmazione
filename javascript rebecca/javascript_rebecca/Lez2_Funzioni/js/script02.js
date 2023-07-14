// funzioni parametriche cioe funzioni con firma piena, funzioni con parametri definiti

function calcolaArea(altezza, larghezza){
    let area = altezza * larghezza;

    return area;
}

function calcolaVolume(profondita){
let area = calcolaArea(10, 5);

let volume = area * profondita;
return volume;
}

let volume = calcolaVolume(6);
console.log(volume);



