const banner = document.getElementById("slider")
const pj = document.getElementById("personaje")
const fondo = document.getElementById("fondo")
const dialogo = document.getElementById("dialogo")
const derecha = document.getElementById("rh")
const izquierda = document.getElementById("lf")
const nombre = document.getElementById("name")
const tipo = document.getElementById("t")
const element = document.getElementById("e")
const grado = document.getElementById("g")
const rec1 = document.getElementById("recuadro")
const rec2 = document.getElementById("recuadro2")
const tipoImg = document.getElementById("ti")
const elementImg = document.getElementById("ei")
const gradoImg = document.getElementById("gi")
const prs = document.getElementById(".mySlides")
const txt = document.getElementById("txt")
const txe = document.getElementById("txe")
const txg = document.getElementById("txg")

var cont = 0;

class Banner {
    constructor(api, cont) {
        this.img = api[cont]["img"];
        this.name = api[cont]["name"];
        this.fondo = api[cont]["img"];
        this.dialogo = api[cont]["dialoge"];
        this.color = api[cont]["color"];
        this.tipo = api[cont]["tipe"];
        this.grado = api[cont]["grade"];
        this.element = api[cont]["element"];
        this.art1 = api[cont]["rec1"];
        this.art2 = api[cont]["rec2"];
    }
}

var json = "";

fetch("https://crizzvc.github.io/Api_zzz/api.json")
    .then(res => res.json())
    .then(response => {
        console.log(response);
        json = response;

        actualizarBanner();
    });

function actualizarBanner() {
    if (json && json[cont]) { 
        var characterInfo = new Banner(json, cont);
        pj.src = characterInfo.img;
        nombre.innerHTML = characterInfo.name;
        fondo.src = characterInfo.fondo;
        banner.style.background = characterInfo.color; 
        dialogo.innerText = characterInfo.dialogo; 
        rec1.style.background = characterInfo.art1; 
        rec2.style.background = characterInfo.art2;
        
        tipo.innerHTML = characterInfo.tipo;
        if(characterInfo.tipo == "Attack"){
            tipoImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/tipo.png";
            txt.innerHTML = "este personaje es atacante";
        } else if( characterInfo.tipo == "support"){
            tipoImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/tipo2.png";
            txt.innerHTML = "este personaje es soporte";
        }else if( characterInfo.tipo == "Anomaly"){
            tipoImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/tipo3.png";
            txt.innerHTML = "este personaje es anomalo";
        }else if( characterInfo.tipo == "Defense"){
            tipoImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/tipo4.png";
            txt.innerHTML = "este personaje es defensivo";
        }else if( characterInfo.tipo == "stunner"){
            tipoImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/tipo5.png";
            txt.innerHTML = "este personaje es aturdidor";
        }
        element.innerHTML = characterInfo.element;
        if(characterInfo.element == "ice"){
            elementImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/cryo.png";
            txe.innerHTML = "este personaje hace daño de hielo";
        } else if( characterInfo.element == "fire"){
            elementImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/piro.png";
            txe.innerHTML = "este personaje hace daño de fuego";
        }else if( characterInfo.element == "physical"){
            elementImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/fisico.png";
            txe.innerHTML = "este personaje hace daño de fisico";
        }else if( characterInfo.element == "ether"){
            elementImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/ether.png";
            txe.innerHTML = "este personaje hace daño de etherio";
        }else if( characterInfo.element == "electro"){
            elementImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/electro.png";
            txe.innerHTML = "este personaje hace daño de electro";
        }
        grado.innerHTML = characterInfo.grado;
        if(characterInfo.grado == "✦ ✦ ✦ ✦ ✦"){
            gradoImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/grado.png";
            txg.innerHTML = "este personaje es de 5 estrellas";
        } else if( characterInfo.grado == "✦ ✦ ✦ ✦"){
            gradoImg.src = "https://raw.githubusercontent.com/CrizzVc/Api_zzz/refs/heads/main/img/sources/gradoA.png";
            txg.innerHTML = "este personaje es de 4 estrellas";
        }
        
    }
}



// flechas para cambiar de personaje
derecha.onclick = function() {
    if(cont < json.length - 1){
        cont = cont + 1;
    }
    actualizarBanner();
}

izquierda.onclick = function() {
    cont = cont - 1;
    if (cont < 0){
        cont = 0;
    }
    actualizarBanner();
}
