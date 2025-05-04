
class Neko {
    id;
    name;
    img;
    img2;
    grade;
    dialoge;

    constructor(id, name, img, img2, grade, dialoge) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.img2 = img2;
        this.grade = grade;
        this.dialoge = dialoge;
    }
}

fetch("https://crizzvc.github.io/Api_zzz/api.json")
    .then(res => res.json())
    .then(response => {
        console.log(response);
        json = response;

        for (let i = 0; i < json.length; i++) {
            const element = json[i];
            neko = new Neko(element.id, element.name, element.img2, element.img, element.grade, element.dialoge);
            console.log(neko);
            const itens = document.createRange().createContextualFragment( `
                <div class="card" style="width: 18rem;">
                    <img src='${neko.img}' class="card-img-top" alt="imagen">
                    <div class="card-body">
                        <h5 class="card-title">${neko.name}</h5>
                        <p class="card-text">${neko.dialoge}</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
                `);
        
                const ver = document.getElementById("itens");
                ver.appendChild(itens);

                
        }
    });
// 

