class Pc {
    
    nombre;
    cpu;
    gpu;
    ram;
    ghz;
    vram;
    gb;

    constructor(name, cpu, gpu, ram){
        this.nombre = name;
        this.cpu = cpu;
        this.gpu = gpu;
        this.ram = ram;
        
        this.nombre = name;
        this.ghz = cpu.ghz;
        this.vram = gpu.gpu;
        this.gb = ram.gb;
    }
    
    atributos(){
        console.log(`pc: ${this.nombre}`);
        console.log(this.cpu);
        console.log(this.gpu);
        console.log(this.ram);
    }
    
    jugarCallofDuty(){
        if (this.vram >= 4){
            console.log("te sacaste una nuclear");
        }else{
            console.log("tu pc exploto");
        }
        
    }


}

class Grafica {
    modelo;
    gpu;

    constructor(model, gpu){
        this.modelo = model;
        this.gpu = gpu;
    }


}

class Procesador {
    modelo;
    ghz;
    constructor(model, ghz){
        this.modelo = model;
        this.ghz = ghz;
    }
    
    
}

class Ram {
    modelo;
    gb;
    constructor(model, gb){
        this.modelo = model;
        this.gb = gb;
    }
    
    
}


const ram = new Ram("Kingston", 16)
const rx570 = new Grafica("rx570", 4);
const amdRyzen7 = new Procesador("AMD ryzen 7", 3.5);
const pcGamer = new Pc("pcABC", amdRyzen7, rx570, ram);

pcGamer.atributos();
pcGamer.jugarCallofDuty();
