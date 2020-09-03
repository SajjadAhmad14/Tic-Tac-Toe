class Board
      attr_accessor : game_board
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
    end
    
    def check_vertical
        vertical1 = game_board['1'], game_board['2'], game_board['7']
        vertical2 = game_board['2'], game_board['5'], game_board['8']
        vertical2 = game_board['3'], game_board['6'], game_board['9']
    end

    def check_horizontal
        horizontal1 = game_board['1'], game_board['2'], game_board['3']
        horizontal2 = game_board['4'], game_board['5'], game_board['6']
        horizontal2 = game_board['7'], game_board['8'], game_board['9']
    end

    def check_diagonal
      diagonal1 = game_board['1'], game_board['5'], game_board['9']
      diagonal2 = game_board['3'], game_board['5'], game_board['7']
    end 
end