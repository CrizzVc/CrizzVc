puts "Binevenid@!!"
puts "selecciona una adivinanza!!"
puts "|  ad1  |  ad2  |  ad3  |"
puts "los mas dificiles :D"
puts "|  ad4  |  ad5  |  ad6  |"

nda = gets.chomp

if nda == "ad1"
    puts "PISTA: es un Animal"
    puts "Vuelo de noche, duermo en el día y nunca veras plumas en ala mía"
    r1 = gets.chomp
    if r1 == "murcielago"
        puts"su respuesta es..."
        puts"CORRECTA!"
    elsif r1 == "Murcielago"
        puts"su respuesta es..."
        puts"CORRECTA!"
    else 
        puts"su respuesta es..."
        puts"INCORRECTA!"
    end
elsif nda == "ad2"
    puts "PISTA: es un Animal"
    puts "¿Cuál es la estrella que no tiene luz?"
    r1 = gets.chomp
    if r1 == "la estrella de mar"
        puts"su respuesta es..."
        puts"CORRECTA!"
    elsif r1 == "estrella de mar"
        puts"su respuesta es..."
        puts"CORRECTA!"
    else 
        puts"su respuesta es..."
        puts"INCORRECTA!"
    end


elsif nda == "ad3"
    puts "PISTA: es una fruta"
    puts "Blanca por dentro, verde por fuera. Si quieres te lo digo, espera..."
    r1 = gets.chomp
    if r1 == "La pera"
        puts"su respuesta es..."
        puts"CORRECTA!"
    elsif r1 == "la pera"
        puts"su respuesta es..."
        puts"CORRECTA!"
    else 
        puts"su respuesta es..."
        puts"INCORRECTA!"
    end


elsif nda == "ad4"
    puts "Una señorita muy señoreada, lleva sombrero verde y blusa colorada."
    r1 = gets.chomp
    if r1 == "La fresa"
        puts"su respuesta es..."
        puts"CORRECTA!"
    elsif r1 == "la fresa"
        puts"su respuesta es..."
        puts"CORRECTA!"
    else 
        puts"su respuesta es..."
        puts"INCORRECTA!"
    end


elsif nda == "ad5"
    puts "¿Qué cosa es que cuanto más le quitas más grande es?"
    r1 = gets.chomp
    if r1 == "un agujero"
        puts"su respuesta es..."
        puts"CORRECTA!"
    elsif r1 == "un hueco"
        puts"su respuesta es..."
        puts"CORRECTA!"
    else 
        puts"su respuesta es..."
        puts"INCORRECTA!"
    end


elsif nda == "ad6"
    puts "¿Qué es lo que se hace de noche, que no se puede hacer de día?"
    r1 = gets.chomp
    if r1 == "trasnocharse"
        puts"su respuesta es..."
        puts"CORRECTA!"
    elsif r1 == "Trasnocharse"
        puts"su respuesta es..."
        puts"CORRECTA!"
    else 
        puts"su respuesta es..."
        puts"INCORRECTA!"
    end
end