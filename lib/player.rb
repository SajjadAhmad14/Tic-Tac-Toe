class Player
    attr_accessor :tag1, :tag2, :name1, :name2
    def initialize(player1, player2)
        @name1 = player1
        @name2 = player2
        @tag1 = 'x'
        @tag2 = 'o'
    end
    def self.validate_names(name)
        until name.match?(/[a-zA-Z]/) != false
            puts "Player name should contain at least one character!"
            name = gets.chomp
        end
        name
    end
end