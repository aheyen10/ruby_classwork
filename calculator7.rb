class Calculator
    
    def initialize (var1, var2)
        @var1 = variable1
        @var2 = variable2
    end

    def add
        @var1 + @var2
    end

    def sub
        @var1 - @var2
    end
end

calc = Calculator.new(57543, 200)
puts calc.add
puts calc.sub
