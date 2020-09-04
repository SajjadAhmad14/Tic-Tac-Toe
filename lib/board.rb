class Board
    attr_accessor :game_board
    def initialize(player)
        @game_board = {'1' => '1', '2' => '3', '3' => '3',
              '4' => '4', '5' => '5', '6' => '6',
              '7' => '7', '8' => '8', '9' => '9'
             }
        @player = player
    end

    def print_board
    #   print @game_board['1'] + " " + "|" + " " + @game_board['2'] + "|" + @game_board['3']
    #   puts
    #   print @game_board['4'] + " " + "|" + " " + @game_board['5'] + "|" + @game_board['6']
    #   puts 
    #   print @game_board['7'] + " " + "|" + " " + @game_board['8'] + "|" + @game_board['9']
    #   puts
    puts @game_board
    end

    def validate_move(move)
      until (move.to_i >=1 && move.to_i <= 9) && (@game_board[move] == '')
        puts "Please enter your move between 1-9 only"
        move = gets.chomp
      end
      move
    end

    def reset_board
      @game_board.each do |key, value|
        @game_board[key] = ''
      end
    end

    def update_board(move, name)
        if name == @player.name1
          @game_board[move] = @player.tag1
        else
          @game_board[move] = @player.tag2
        end
        print_board
        check_vertical
        check_horizontal
        check_diagonal
    end
    
    def check_vertical
        vertical1 = game_board['1'], game_board['2'], game_board['7']
        vertical2 = game_board['2'], game_board['5'], game_board['8']
        vertical3 = game_board['3'], game_board['6'], game_board['9']
        puts "#{@player.name1} won" if vertical1.all?('x') || vertical2.all?('x') || vertical3.all?('x')
        puts "#{@player.name2} won" if vertical1.all?('o') || vertical2.all?('o') || vertical3.all?('o')
    end

    def check_horizontal
        horizontal1 = game_board['1'], game_board['2'], game_board['3']
        horizontal2 = game_board['4'], game_board['5'], game_board['6']
        horizontal3 = game_board['7'], game_board['8'], game_board['9']
        puts "#{@player.name1} won" if horizontal1.all?('x') || horizontal2.all?('x') || horizontal3.all?('x')
        puts "#{@player.name2} won" if horizontal1.all?('o') || horizontal2.all?('o') || horizontal3.all?('o')
    end

    def check_diagonal
      diagonal1 = game_board['1'], game_board['5'], game_board['9']
      diagonal2 = game_board['3'], game_board['5'], game_board['7']
      puts "#{@player.name1} won" if diagonal1.all?('x') || diagonal2.all?('x')
      puts "#{@player.name2} won" if diagonal1.all?('o') || diagonal2.all?('o')
    end 
end