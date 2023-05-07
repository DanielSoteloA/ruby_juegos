=begin
  Desafío - Flujo, ciclos y Métodos (I)
  Autor: Daniel Sotelo
  archivo: juegos.rb
  Para [Version][S.O.]:
    ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]
    ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
=end

#Menu
def menu n
  #limpia Pantalla si es windows cls sino clear
  if Gem.win_platform?
    #para SO Windows
    system 'cls'
  else
    #para Otros
    system 'clear'
  end
  
  print "***********************************\n"
  print "*                                 *\n"
  print "*         JUEGO ca-chi-pún        *\n"
  print "*  ingresa la opción que jugaras  *\n"
  print "*                                 *\n"
  print "*    Piedra || Papel || Tijeras   *\n"
  print "*                                 *\n"
  print "***********************************\n"
  if n==1
    print "solo son validas las siguientes opciones => Piedra || Papel || Tijeras\n"
  end
    print "ingresa tu Opción => "
end

#determina ganador
def juego (x,y)
  if (x==1 && y==1) || (x==2 && y==2) || (x==3 && y==3)
    print "Han Empatado \n"
  elsif (x==1 && y==3) || (x==2 && y==1) || (x==3 && y==2)
    print "Felicidades Ganaste\n"
  elsif (x==1 && y==2) || (x==2 && y==3) || (x==3 && y==1)
    print "Lo sentimos Perdiste\n"
  end
end

#variable numerica
#se asigna 1 cuando termina la ejecución del programa
terminado = 0

#llama a Menu presentación
menu(0)

while terminado == 0 do
  #Lectura opcion del usuario
  ingreso_usuario = gets.chomp.to_s

  #Opcion del computador
  op_sistema = Random.rand(1..3)
  if op_sistema == 1 
    ingreso_sistema = "PIEDRA"
  elsif op_sistema == 2 
    ingreso_sistema = "PAPEL"
  elsif op_sistema == 3
    ingreso_sistema = "TIJERAS"
  end

  #Desarrollo del juego
  if ingreso_usuario.upcase == 'PIEDRA' 
    #muestra opciones jugadas
    print "\n[Usuario]-> #{ingreso_usuario.upcase} <==> #{ingreso_sistema} <-[Sistema]\n"
    juego(1,op_sistema)
    terminado = 1
  elsif ingreso_usuario.upcase == 'PAPEL'
    #muestra opciones jugadas
    print "\n[Usuario]-> #{ingreso_usuario.upcase} <==> #{ingreso_sistema} <-[Sistema]\n"
    juego(2,op_sistema)
    terminado = 1
  elsif ingreso_usuario.upcase == 'TIJERAS'
    #muestra opciones jugadas
    print "\n[Usuario]-> #{ingreso_usuario.upcase} <==> #{ingreso_sistema} <-[Sistema]\n"
    juego(3,op_sistema)
    terminado = 1
  else
    menu(1)
  end
  
end