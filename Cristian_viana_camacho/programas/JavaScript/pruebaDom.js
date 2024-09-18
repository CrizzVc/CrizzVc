const cuerpo = document.querySelector("body");
const button = document.querySelector("button");

let colores = [1, 2, 3, 4, 5, 6, 7, 8, 9, "A", "B", "C", "D", "E", "F"];

function randomNumber(){
    return Math.floor(Math.random() * colores.length)
};

function action() {
    let color = "#";
    for (let i = 0; i < 6; i++) {
        color += colores[randomNumber()]
    }
    cuerpo.style.background = color;
};

button.addEventListener("click", action);



