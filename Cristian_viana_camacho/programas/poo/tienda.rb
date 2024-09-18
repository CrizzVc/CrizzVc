$miDinero = 0

class Producto 
    attr_accessor :nombre, :precio
end

class Cliente 
    attr_accessor :compras, :dinero

    def pagar()
        @dinero = @dinero - @compras 
        $miDinero = $miDinero + @compras
        puts "cliente pagó #{compras}"
    end
end


cereal = Producto.new
cereal.nombre = "zucaritas"
cereal.precio = 10000

leche = Producto.new
leche.nombre = "colanta"
leche.precio = 3000

frutosRojos = Producto.new
frutosRojos.nombre = "frutos Rojos"
frutosRojos.precio = 5000

yogurGriego = Producto.new
yogurGriego.nombre = "yogur griego"
yogurGriego.precio = 10000

juan = Cliente.new 
juan.compras = cereal.precio + leche.precio + frutosRojos.precio
juan.dinero = 40000

juan.pagar()

puts "#{juan.dinero}"
puts "#{$miDinero}"