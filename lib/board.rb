class Board
    def initialize
        @game_board = {'1' => '1', '2' => '', '3' => '3',
              '4' => '4', '5' => '5', '6' => '6',
              '7' => '7', '8' => '8', '9' => '9'
             }
    end

    def print_board
      print @game_board['1'] + " " + "|" + @game_board['2'] + " " + "|" + " " + @game_board['3']
      puts
      print @game_board['4'] + " " + "|" + @game_board['5'] + " " + "|" + " " + @game_board['6']
      puts 
      print @game_board['7'] + " " + "|" + @game_board['8'] + " " + "|" + " " + @game_board['9']
      puts
    end

    def validate_move(move)
      until (move.to_i >=1 && move.to_i <= 9) && (@game_board[move] == '')
        puts "Please enter your move between 1-9 only"
        move = gets.chomp
      end
      move
    end

    def update_board
    end

end