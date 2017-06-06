module Fuerza_del_motor
	#Poder del motor
	def potencia(numero_caballos_de_fuerza)
		puts "cantidad de #{numero_caballos_de_fuerza}"
	end
end

class Vehicle
	attr_accessor :color, :rendimiento
	@@instaciados = 0
	def initialize(color, rendimiento)
		@@instaciados += 1
		@color = color
		@rendendimiento = rendimiento
	end	

	def self.numero_henrecia
		@@instaciados
	end

	def self.gas_mileage(distancia, rendimiento)
		distancia/rendimiento
	end

end 

class Mycar < Vehicle
	@@NUMBER_OF_DOORS = 2
	@@numero_caballos_de_fuerza = 35
	def self.NUMBER_OF_DOORS
	 	@@NUMBER_OF_DOORS
	end

	def spray_paint(color)
		@color =  color
	end
	private
	
	def edadvehiculo
		ahora = Time.now
		anoauto =  Time.new(2013)
		resultado = (ahora.year - anoauto.year)
		puts resultado
	end
end

class Mytruck  < Vehicle
	@@NUMBER_OF_DOORS = 4
	@@numero_caballos_de_fuerza = 55
	def self.NUMBER_OF_DOORS
		@@NUMBER_OF_DOORS
	end
end



car1 = Mycar.new("Rojo", 13)
#puts car1.color

#puts "despues del cambio"
#car1.spray_paint("Azul")

#puts car1.color
#puts Mycar.gas_mileage(1500, car1.rend_vehiculo)

car2 = Mytruck.new("blanco", 14)

print Vehicle.ancestors
print Mycar.ancestors
print Mytruck.ancestors