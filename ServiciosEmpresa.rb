# Declare an ServiciosEmpresa Class
# Made by @Zhionit

class ServiciosEmpresa

      #Constructor
      def initialize
            @empresa = Empresa.new
      end

      #Accesors
      attr_reader :empresa
      attr_writer :empresa

      #Methods
      def calcularNomina
            empresa.calcularNomina
      end

      def calcularEmpleadosSegunEstado estado
            empresa.calcularEmpleadosSegunEstado(estado)
      end

      def calcularEmpleadosActivos
            empresa.calcularEmpleadosActivos
      end

end
