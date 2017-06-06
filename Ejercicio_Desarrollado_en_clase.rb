class Mycar
	attr_accessor :color, :rend_vehiculo
	def initialize(color, rendimiento)
		@color = color
		@rend_vehiculo =  rendimiento
	end

	def spray_paint(color)
		@color =  color
	end

	def self.gas_mileage(distancia, rendimiento)
		distancia/rendimiento
	end
end

car1 = Mycar.new("Rojo", 13)

puts car1.color

puts "despues del cambio"
car1.spray_paint("Azul")

puts car1.color

puts Mycar.gas_mileage(1500, car1.rend_vehiculo)

