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
            puts('Hello from ServiciosEmpresa, from calcularNomina')
            @empresa.calcularNomina
      end

      def calcularEmpleadosSegunEstado estado
            @empresa.calcularEmpleadosSegunEstado(estado)
      end

      def calcularEmpleadosActivos
            @empresa.calcularEmpleadosActivos
      end

      def listaEmpleados
            @empresa.listaEmpleados
      end

      def buscarEmpleadoPorId idP
            @empresa.buscarEmpleadoPorId idP
      end

      def cambiarSalarioEmpleado nuevoSalario, idP
            @empresa.cambiarSalarioEmpleado nuevoSalario,idP
      end

      def agregarNuevoEmpleado nuevoEmpleado
            @empresa.agregarNuevoEmpleado nuevoEmpleado
      end

end
