# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
        attr_accessor :num, :den
        attr_reader :num,:den

        def initialize(n,d)
                mcd = gcd(n,d)
                @num = n/mcd
                @den = d/mcd
        end


        def to_s
                "#{@num}/#{@den}"
        end


        def suma(n,d)
                denominador=@den*d
                numerador=(@num*d)+(n*@den)
                suma=Fraccion.new(numerador,denominador)
                return suma.to_s
        end




        def resta(n,d)
                denominador=@den*d
                numerador=(@num*d)-(n*@den)
                resta=Fraccion.new(numerador,denominador)
                return resta.to_s

        end


        def producto(n,d)
                numerador=@num*n
                denominador=@den*d
                produc=Fraccion.new(numerador,denominador)
                return produc.to_s
        end


        def division(n,d)
                numerador=@num*d
                denominador=@den*n
                divi=Fraccion.new(numerador,denominador)
                return divi.to_s
        end
end


m=Fraccion.new(3,4)
puts "X= #{m.to_s}"
puts "Y= 7/3"
puts "suma #{m.suma(7,3)}"
puts "resta #{m.resta(7,3)}"
puts "producto #{m.producto(7,3)}"
puts "division #{m.division(7,3)}"
