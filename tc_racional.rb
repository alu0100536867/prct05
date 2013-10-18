# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
        def setup
                @f1 = Fraccion.new(2,5)
                @f2 = Fraccion.new(1,3)
        end
        def test_suma
                assert_equal("11/15", @f1.suma(@f2.num,@f2.den))
        end
        def test_resta
                assert_equal("1/15",@f1.resta(@f2.num,@f2.den))
        end
        def test_producto
                assert_equal("2/15",@f1.producto(@f2.num,@f2.den))
        end
        def test_division
                assert_equal("6/5",@f1.division(@f2.num,@f2.den))
        end

end
