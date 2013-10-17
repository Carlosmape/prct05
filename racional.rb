# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
    ####atributos
    attr_reader :numerador, :denominador

    ####métodos
    def initialize (a,b) #Inicializa los atributos(num,denom)
        mcd = gcd (a,b)
        @numerador, @denominador = a/mcd, b/mcd #garantizamos que la fraccion este simplificada
    end

    def to_s #Pone el número racional como cadena para mostrarlo por pantalla
        "#{numerador}/#{denominador}"
    end

    def +(op) #Operador suma de racionales
        denom = @denominador*op.denominador #denominador del resultado
        num = (@numerador*op.denominador + op.numerador*@denominador) #numerador del resultado
        mcd = gcd(num,denom) #calculamos el max. comun divisor para simplificar la fraccion creada
        Fraccion.new(num/mcd,denom/mcd)
    end

    def -(op) #operador resta de racionales
        denom = @denominador*op.denominador #denominador del resultado
        num = (@numerador*op.denominador - op.numerador*@denominador) #numerador del resultado
        mcd = gcd(num,denom) #calculamos el max. comun divisor para simplificar la fraccion creada
        Fraccion.new(num/mcd,denom/mcd)
    end

    def *(op) #operador producto de racionales
        denom = @denominador*op.denominador
        num = @numerador*op.numerador
        mcd = gcd(num,denom)
        Fraccion.new(num/mcd,denom/mcd)
    end

    def /(op)
        denom = @denominador*op.numerador
        num = @numerador*op.denominador
        mcd = gcd(num,denom)
        Fraccion.new(num/mcd,denom/mcd)
    end
end
