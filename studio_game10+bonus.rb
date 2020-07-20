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

class Game
    attr_reader :title
    
    def initialize(title)
        @title = title
        @players = []
    end

    def add_player(add)
        @players.push(add)
    end

    def play
        puts "There are #{@players.size} players in the #{@title}:"
        @players.each do |player|
            puts player
        end
        @players.each do |player|
            player.blam
            player.w00t
            player.w00t
            puts player
        end
    end
end

player1 = Player.new("moe")
player2 = Player.new("larry",60)
player3 = Player.new("curly",125)

player4 = Player.new("Leonardo",200)
player5 = Player.new("Raphael",150)
player6 = Player.new("Donatello",80)
player7 = Player.new("Michaelangelo", 300)

knuckleheads = Game.new("Knuckleheads")
puts knuckleheads.title
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

turtles = Game.new("Teenage Mutant Ninja Turtles")
puts turtles.title
turtles.add_player(player4)
turtles.add_player(player5)
turtles.add_player(player6)
turtles.add_player(player7)
turtles.play