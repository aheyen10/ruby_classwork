class Project
    
    attr_accessor :name, :funds, :goal

    def initialize(name, funds, goal = 100000)
        @name = name.upcase
        @funds = funds
        @goal = goal
    end

    
    def to_s
        "Project #{@name} has $#{@funds} towards a goal of #{@goal}."
    end    

    def lost
        @funds -= 15
        puts "#{@name} has lost some funds!"
    end

    def gain
        @funds += 25
        puts "#{@name} got more funds!"
    end

    def funds_needed
        @goal - @funds
    end

end

project1 = Project.new("abc", 1000, 5000)
project2 = Project.new("ghi", 600, 2000)
project3 = Project.new("lmn", 500, 3000)
project4 = Project.new("xyz", 25, 75)

projects = [project1, project2, project3, project4]

t = Time.now
puts "There are currently #{projects.size} open projects as of #{t.strftime("%A")}."

projects.each do |project|
    puts project
end

projects.each do |project|
    puts project.lost
    puts project.lost
    puts project.gain
    puts project.gain
    puts project.gain
    puts project
end

projects.delete(project2)
project5 = Project.new("RST", 400, 800)
projects.push(project5)
puts projects

