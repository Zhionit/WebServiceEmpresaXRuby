# Declare an SWEmpresa Class
# Made by @Zhionit

require_relative 'ServiciosEmpresa'

class SWEmpresa

      #Constructor
      def initialize
            @serviciosEmpresa = ServiciosEmpresa.new
            puts('Hello from SWEMpresa, constructor')
      end

      #Accesors
      attr_reader :serviciosEmpresa
      attr_writer :serviciosEmpresa

      #Methods
      def calcularNomina
            @serviciosEmpresa.calcularNomina
            puts('Hello from SWEMpresa, from calcularNomina')
      end

      def calcularEmpleadosSegunEstado estado
            serviciosEmpresa.calcularEmpleadosSegunEstado(estado)
      end

      def calcularEmpleadosActivos
            serviciosEmpresa.calcularEmpleadosActivos
      end

end
