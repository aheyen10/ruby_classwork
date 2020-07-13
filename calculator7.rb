class Calculator
    
    def initialize (a, b)
        @a = a
        @b = b
    end

    def add
        @a + @b
    end

    def sub
        @a - @b
    end
end

calc = Calculator.new(57543, 200)
puts calc.add
puts calc.sub
