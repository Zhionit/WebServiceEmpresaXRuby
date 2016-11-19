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
            #puts( 'before')
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
@WSempresa = SWEmpresa.new
@WSempresa.addEmployers

loop do
      input = gets.chomp
      command, *params = input.split /\s/

      case command
            when '1'
                  #Calcular nomina
                  totalNomina = @WSempresa.calcularNomina
                  puts "Nomina total de la empresa: $#{totalNomina}"

            when '2'
                  #Calcular número de empleados activos
                  totalEmpleadosActivos = @WSempresa.calcularEmpleadosActivos
                  puts "Total Empleados activos de la empresa: #{totalEmpleadosActivos}"
            when '3'
                  #Calcular numero de empleados según un estado en particular
                  puts 'Igrese Estado: '
                  input = gets.chomp
                  commandTemp, *params = input
                  totalEmpleadosSegunEstado = @WSempresa.calcularEmpleadosSegunEstado commandTemp
                  puts "Total Empleados segun estado: #{totalEmpleadosSegunEstado}"
            when '4'
                  #Arreglo con los empleados de la empresa
                  resultArray = @WSempresa.listaEmpleados

                  for i in 0... resultArray.size
                        empleado = resultArray.at(i)
                        puts empleado.id.to_s + ', ' + empleado.nombre + ', ' + ', ' + empleado.fechaNacimiento.to_s + ', ' + empleado.salarioBase.to_s + ', ' + empleado.estado
                  end

                  #puts resultArray
                  puts resultArray.size
            when '5'
                  #Busqueda de Empleado por Id
                  puts 'Ingrese el código del empleado: '
                  input = gets.chomp
                  commandTemp, *params = input.split /\s/
                  empleado = @WSempresa.buscarEmpleadoPorId commandTemp
                  if empleado.nil?
                        puts 'Empleado no encontrado'

                  else
                        puts puts empleado.id.to_s + ', ' + empleado.nombre + ', ' + ', ' + empleado.fechaNacimiento.to_s + ', ' + empleado.salarioBase.to_s + ', ' + empleado.estado
                  end
            when '6'
                  #Modificar un salario en específico
                  puts 'Ingrese el código del empleado: '
                  input = gets.chomp
                  idEmpleado, *params = input.split /\s/

                  puts 'Ingrese el nuevo salario: '
                  input = gets.chomp
                  nuevoSalario, *params = input.split /\s/

                  empleadoBuscado = @WSempresa.buscarEmpleadoPorId idEmpleado
                  puts "Anterior Salario: #{empleadoBuscado.salarioBase}"
                  @WSempresa.cambiarSalarioEmpleado nuevoSalario, idEmpleado
                  puts "Anterior Salario: #{empleadoBuscado.salarioBase}, nuevo salario: #{nuevoSalario}"

            when '7'
                  #Adicionar empleado
                  nuevoEmpleado = Empleado.new 99, 'Nombre 99', Date.new(1914,04,1), 134678, 'No Activo'
                  @WSempresa.agregarNuevoEmpleado nuevoEmpleado
                  puts @WSempresa.cantidadEmpleados
            else
                  puts 'Invalid command'
      end
end
