puts "numero de estudiantes"
es = gets.chomp.to_i
my = 0
mn = 0
gn = 0
tmy = 0
tmn = 0
for i in 1..es
   puts "ingrese el valor a dar"
   v = gets.chomp.to_i
   if v >= 5000
    my = my + 1 
    tmy += v 
    gn += v 
   else 
    mn = mn + 1
    tmn += v 
    gn += v 
   end
end
promy = (tmy/my)
promn = (tmn/mn)
progn = (gn/es)

puts "la cantidad total recolectada es de: #{gn}"
puts "la cantidad total recolectada por quienes dieron mas de 5000 es de: #{tmy} y fueron #{my} personas"
puts "la cantidad total recolectada por queienes dieron menos de 5000 es de: #{tmn} y fueron #{mn} personas"
puts "el promedio general es de: #{progn}"
puts "el promedio de las personas que dieron mas de 5000 es de: #{promy}"
puts "el promedio de las personas que dieron menos de 5000 es de: #{promn}"