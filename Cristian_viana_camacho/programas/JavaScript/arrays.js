const myArry = [
    {
        nombre: "pedrito",
        edad: "38",
        hobby: "bordar",
    },
    {
        nombre: "maria",
        edad: "28",
        hobby: "patinar",
    },
    {
        nombre: "ximena",
        edad: "17",
        hobby: "leer",
    },
    {
        nombre: "andres",
        edad: "19",
        hobby: "dibujar",
    },
    {
        nombre: "morales",
        edad: "50",
        hobby: "modelado",
    },
];


for (let i = 0; i < myArry.length; i++) {
    console.log("------------------------------");
    console.log("Nombre:" + myArry[i].nombre);
    console.log("Edad:" + myArry[i].edad);
    console.log("Hobby:" + myArry[i].hobby);
}