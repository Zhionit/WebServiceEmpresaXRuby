# Declare an Test Class
# Made by @Zhionit
require_relative 'SWEmpresa'
class Test

      def initialize
            @swEmpresa = SWEmpresa.new

            #startProgram
      end

      def self.startProgram
            #@swEmpresa = SWEmpresa.new
            puts( 'before')
            SWEmpresa.calcularNomina
      end

end

puts('Por favor seleccione una opcion:
1. Un servicio que retorne el cálculo de la nómina de la empresa.
2. Un servicio que calcule el número de empleados en estado activo.
3. Un servicio que calcule el número de empleados en un estado especificado.
4. Un servicio que retorne un arreglo con los empleados de la empresa.
5. Un servicio que retorne un empleado especifico de la empresa (buscado por id).
6. Un servicio que permita modificar el salario de un empleado.
7. Un servicio que retorne adicione un empleado a la empresa.')

loop do
      input = gets.chomp
      command, *params = input.split /\s/
      case command
            when '1'
                  puts( 'before')
                  @WSempresa = SWEmpresa.new
                   @WSempresa.calcularNomina
            else
                  puts 'Invalid command'
      end
end
