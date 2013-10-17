# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

$fa =Fraccion.new(4,3)
$fb =Fraccion.new(2,5)

$fadd = Fraccion.new(26,15)
$fdiff = Fraccion.new(14,15)
$fprod = Fraccion.new(8,15)
$fdiv = Fraccion.new(10,3)

class Test_Fraccion < Test::Unit::TestCase
    def test_gcd
        assert_equal(3,gcd(6,3))
    end

    def test_suma
        assert_equal($fadd.to_s,($fa+$fb).to_s )
    end

    def test_diferencia
        assert_equal($fdiff.to_s,($fa - $fb).to_s )
    end

    def test_producto
        assert_equal($fprod.to_s,($fa * $fb).to_s )
    end

    def test_cociente
        assert_equal($fdiv.to_s,($fa / $fb).to_s )
    end

    def test_initialize
        assert_equal($fa.to_s,Fraccion.new(4,3).to_s)
    end

    def test_denominadorcero
        assert_equal("/",Fraccion.new(4,0).to_s)
    end
end
