# Declare an Empresa Class
# Made by @Zhionit

#Requires
require 'date'
require_relative 'Empleado'

class Empresa

#@@employers
      #Constructor
      def initialize(nit, nombre)
            @nit = nit
            @nombre = nombre
            @employers = Array.new
            addEmployers
      end

      #Accesors
      attr_accessor :nit
      attr_accessor :nombre
      attr_accessor :employers

      #Methods
      def addEmployers

            @employers << Empleado.new(1, "Nombre 1", Date.new(1994,07,19), 9300000, 'Activo')
            @employers << Empleado.new(2, "Nombre 2", Date.new(1995,05,22), 3240000, 'No Activo')
            @employers << Empleado.new(3, "Nombre 3", Date.new(1996,06,24), 3110000, 'Activo')
            @employers << Empleado.new(4, "Nombre 4", Date.new(1997,07,9), 3050010, 'Activo')
            @employers << Empleado.new(5, "Nombre 5", Date.new(1998,07,7), 3070009, 'No Activo')
            @employers << Empleado.new(6, "Nombre 6", Date.new(1999,04,14), 1300000, 'Activo')
            @employers << Empleado.new(7, "Nombre 7", Date.new(1999,03,26), 2000500, 'Activo')
            @employers << Empleado.new(8, "Nombre 8", Date.new(1999,04,21), 5003000, 'No Activo')
            @employers << Empleado.new(9, "Nombre 9", Date.new(1993,02,19), 1102000, 'Activo')
            @employers << Empleado.new(10, "Nombre 10", Date.new(1914,04,1), 3380000, 'Activo')

      end

      def calcularNomina
            totalNominaEmpresa = 0
            for i in 0...10
                  totalNominaEmpresa += @employers.at(i).calcularSalario
                  puts "#{i} Salario Base: #{totalNominaEmpresa}"
            end
            puts('Hello from Empresa, from calcularNomina')
            return totalNominaEmpresa
      end

      def calcularEmpleadosActivos
            for i in employers.size
                  if employers.at(i).estado.eql?("Activo")
                        cantidadActivos += 1
                  end
            end
            cantidadActivos
      end

      def calcularEmpleadosSegunEstado estado
            for i in employers.size
                  if employers.at(i).estado.eqls?(estado)
                        cantidadEmpleadosSegunEstado += 1
                  end
            end
            cantidadEmpleadosSegunEstado
      end

end
