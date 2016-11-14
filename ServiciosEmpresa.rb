# Declare an ServiciosEmpresa Class
# Made by @Zhionit
require_relative 'Empresa'

class ServiciosEmpresa

      #Constructor
      def initialize
            @empresa = Empresa.new(123,'EmpresaX')
      end

      #Accesors
      attr_reader :empresa
      attr_writer :empresa

      #Methods
      def calcularNomina
            #Empresa.calcularNomina
            #@empresa = Empresa.new(123,'EmpresaX')
            @empresa.calcularNomina
            puts('Hello from ServiciosEmpresa, from calcularNomina')
      end

      def calcularEmpleadosSegunEstado estado
            empresa.calcularEmpleadosSegunEstado(estado)
      end

      def calcularEmpleadosActivos
            empresa.calcularEmpleadosActivos
      end

end
