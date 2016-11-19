require 'rubygems'
#require "mysql"
gem 'mysql'
gem 'dbi'
require 'dbi'
#require 'mysql'
class Conexion

      def initialize

            puts 'XXXXXXXXXXXX'
            @my = DBI.connect('DBI:MySql:localhost:RubyExample', 'welcome1', 'welcome1', 'RubyExample')
            #@my = Mysql.new('DBI:Mysql:RubyExample:localhost', 'welcome1', 'welcome1', 'RubyExample')
            puts "#{@my.connected?()}"
            sql = "insert into rubytest.empleado (idempleado, nombre, fechanacimiento, salario, estado) VALUES (?, ?, ?, ?, ?)"
            @my.do(sql, "test","test","test","test","test")
      end

end
