class Player
    attr_reader :health
    attr_accessor :name
    
    def initialize(name, health = 100)
      @name = name.capitalize
      @health = health
    end
    
    def score
        @health + @name.length
    end

    def to_s
      "I'm #{@name} with a health of #{@health} and a score of #{score}."
    end
  
    def blam
      @health -= 10
      puts "#{@name} got blammed!"
    end
    
    def w00t
      @health += 15
      puts "#{@name} got w00ted!"
    end
end

player1 = Player.new("moe")
puts player1

player2 = Player.new("larry",60)
player2.name = "Lawrence"
puts player2
  
player3 = Player.new("curly",125)
puts player3

players = [player1, player2, player3]

puts "There are #{players.size} players in the game:"

players.each do |player|
    puts player
end

players.each do |player|
    puts player.health
end

players.each do |player|
    puts player.blam
    puts player.w00t
    puts player.w00t
    puts player
end

players.pop
player4 = Player.new("Shemp", 90)
players.push(player4)
