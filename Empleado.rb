# Declare an Emlpeado Class
# Made by @Zhionit

class Empleado

      #Constructor
      def initialize(id, nombre, fechaNacimiento, salarioBase, estado)
            @id = id
            @nombre = nombre
            @fechaNacimiento = fechaNacimiento
            @salarioBase = salarioBase
            @estado = estado
      end

      #Accesors
      attr_accessor :id
      attr_accessor :nombre
      attr_accessor :fechaNacimiento
      attr_accessor :salarioBase
      attr_accessor :estado

      #Methods
      def calcularSalario
=begin
            totalSalario = @salarioBase + (@salarioBase * 0.20)
            puts "salarioBase: #{@salarioBase}, totalSalario: #{totalSalario}"
=end

            @salarioBase += @salarioBase * 0.20
      end

end
