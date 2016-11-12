# Declare an Empresa Class
# Made by @Zhionit

#Requires
require 'date'

class Empresa

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

            employers << Empleado.new(1, "Nombre 1", Date.new(1994,07,19), 93000000, 'Activo')
            employers << Empleado.new(2, "Nombre 2", Date.new(1995,05,22), 32400000, 'No Activo')
            employers << Empleado.new(3, "Nombre 3", Date.new(1996,06,24), 31100000, 'Activo')
            employers << Empleado.new(4, "Nombre 4", Date.new(1997,07,9), 30500100, 'Activo')
            employers << Empleado.new(5, "Nombre 5", Date.new(1998,07,7), 30700009, 'No Activo')
            employers << Empleado.new(6, "Nombre 6", Date.new(1999,04,14), 1300000, 'Activo')
            employers << Empleado.new(7, "Nombre 7", Date.new(1999,03,26),2005000, 'Activo')
            employers << Empleado.new(8, "Nombre 8", Date.new(1999,04,21), 50030000, 'No Activo')
            employers << Empleado.new(9, "Nombre 9", Date.new(1993,02,19), 11020000, 'Activo')
            employers << Empleado.new(10, "Nombre 10", Date.new(1914,04,1), 33800000, 'Activo')

      end

      def calcularNomina
            for i in 1..10
                  totalNominaEmpresa += employers.at(i).salarioBase
                  puts totalNominaEmpresa
            end
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
