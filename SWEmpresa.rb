# Declare an SWEmpresa Class
# Made by @Zhionit

require "rubygems"
#require "soap/rpc/standaloneserver" unless defined?(Logger::Application)

require_relative 'ServiciosEmpresa'

class SWEmpresa

      #Constructor
=begin      def initialize(*args)
            @serviciosEmpresa = ServiciosEmpresa.new
            add_method(self, 'calcularNomina')
            add_method(self, 'calcularEmpleadosSegunEstado', 'estado')
            add_method(self, 'calcularEmpleadosActivos')
            add_method(self, 'listaEmpleados')
            add_method(self, 'buscarEmpleadoPorId', 'idP')
            add_method(self, 'cambiarSalarioEmpleado', 'nuevoSalario', 'idP')
            add_method(self, 'agregarNuevoEmpleado', 'nuevoEmpleado')
            add_method(self, 'cantidadEmpleados')

            puts('Hello from SWEMpresa, constructor')
      end
=end

      def initialize
                  @serviciosEmpresa = ServiciosEmpresa.new
                  #puts('Hello from SWEMpresa, constructor')
      end

      #Accesors
      attr_reader :serviciosEmpresa
      attr_writer :serviciosEmpresa

      #Methods
      def calcularNomina
            #puts('Hello from SWEMpresa, from calcularNomina')
            @serviciosEmpresa.calcularNomina
      end

      def addEmployers
            @serviciosEmpresa.addEmployers
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

      def cantidadEmpleados
            @serviciosEmpresa.cantidadEmpleados
      end
end

=begin server = MyServer.new("MyServer",
            'urn:ruby:calculation', 'localhost', 8080)
  trap('INT'){
     server.shutdown
  }
  server.start
=end
