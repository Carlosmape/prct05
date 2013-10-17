# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

$fa =Fraccion.new(4,3)
$fb =Fraccion.new(2,5)

$fadd = Fraccion.new(26,15)
$fdiff = Fraccion.new(14,15)
$fprod = Fraccion.new(8,15)
$fdiv = Fraccion.new(10,13)

class Test_Fraccion < Test::Unit::TestCase
    def test_add
        assert_equal($fadd,$fa + $fb )
    end
    def test_gcd
        assert_equal(3,gcd(6,3))
    end
end
