# Declare an ServiciosEmpresa Class
# Made by @Zhionit

class ServiciosEmpresa

      #Constructor
      def initialize
            @serviciosEmpresa = ServiciosEmpresa.new
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
