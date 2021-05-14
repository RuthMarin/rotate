# Pregunta 1

class Pila
  def initialize()
    @a=[]
  end
  def add(array)
    array.each do |data|
     @a.push(data)
    end
  end
  def move(array)
     @a.unshift(array)
  end
  def delete
    @a.pop
  end
  def show
    return @a
  end
  def get_last
     return @a.last
  end
end

class Rotate
 def self.rotate(rotate,array)
    #Trabajar con el modulo para evitar
    #rotaciones que lleven al mismo estado de inicio
    length = array.show.length()
    turns = rotate.modulo(length).to_i
    last = 0
    if turns == 0
        puts "Arreglo: #{array.show}"
    else
      while last < turns
       actual = array.get_last
       array.delete
       array.move(actual)
       last += 1
     end
    puts "Arreglo: #{array.show}"
    end
 end
end

#Inicializar la pila
array=Pila.new
#Agregar el un array a la pila
array.add(["1","2","3"])
#Método que dado una cantidad K, rote el array K veces
#Ejemplo k = 5077701, array = ["1","2","3"]
Rotate.rotate(5077701,array)

#Pregunta 2
#Qué pasa si llamo al método con K = 500000000000000001 para el ejemplo
#anterior? Como puedo hacer que sea calculado en menos de 1 segundo?
#Se llamo al metodo con esa cantidad de iteraciones y el programa no fue capaz de responder,
#pero al identificar rotaciones que quedaban en el mismo estado inicial
#se decide trabajar solo con el modulo lo que hace que se gasten menos recursos
############
#Habria que analizar la complejidad de la solucion al momento de implementarla.
#Sumar las complejidad de insercion de un array, el recorrido y el eliminado
#para obtener un estimado del tiempo de ejecución expresado en función del tamaño de la entrada
#y ver si este podria ser menos a un segundo.
#Tambien ver donde se estan gastando recursos incesarios y usar alguna logica de logica
#que permita el uso eficiente de ellos.
