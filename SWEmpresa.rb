# Declare an SWEmpresa Class
# Made by @Zhionit

class SWEmpresa

      #Constructor
      def initialize
            @serviciosEmpresa = ServiciosEmpresa.New
      end

      #Accesors
      attr_reader :serviciosEmpresa
      attr_writer :serviciosEmpresa

      #Methods
      def calcularNomina
            serviciosEmpresa.calcularNomina
      end

      def calcularEmpleadosSegunEstado estado
            serviciosEmpresa.calcularEmpleadosSegunEstado(estado)
      end

      def calcularEmpleadosActivos
            serviciosEmpresa.calcularEmpleadosActivos
      end

end
