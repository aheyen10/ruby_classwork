class Project
    def initialize(name, funds, goal = 100000)
        @name = name.upcase
        @funds = funds
        @goal = goal
    end

    def to_s
        "#{@name} has $#{@funds} towards a goal of #{@goal}."
    end    

    def lost
        @funds -= 15
        puts "#{@name} has lost some funds!"
    end

    def gain
        @funds += 25
        puts "#{@name} got more funds!"
    end
end

project1 = Project.new("lmn", 500, 3000)
project2 = Project.new("xyz", 25, 75)

puts project1
puts project2

project1.lost
project2.gain

puts project1
puts project2


    