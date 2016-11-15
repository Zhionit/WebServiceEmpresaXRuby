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
            puts('Hello from SWEMpresa, from calcularNomina')
            @serviciosEmpresa.calcularNomina
      end

      def calcularEmpleadosSegunEstado estado
            @serviciosEmpresa.calcularEmpleadosSegunEstado(estado)
      end

      def calcularEmpleadosActivos
            @serviciosEmpresa.calcularEmpleadosActivos
      end

      def listaEmpleados
            @serviciosEmpresa.listaEmpleados
      end

      def buscarEmpleadoPorId idP
            @serviciosEmpresa.buscarEmpleadoPorId idP
      end

      def cambiarSalarioEmpleado nuevoSalario, idP
            @serviciosEmpresa.cambiarSalarioEmpleado nuevoSalario, idP
      end

      def agregarNuevoEmpleado nuevoEmpleado
            @serviciosEmpresa.agregarNuevoEmpleado nuevoEmpleado
      end
end
