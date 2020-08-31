#!/usr/bin/env ruby

game_board = {'1' => '1', '2' => '2', '3' => '3',
              '4' => '4', '5' => '5', '6' => '6',
              '7' => '7', '8' => '8', '9' => '9'
             }

# Player names should contain at least one letter
puts "Please enter player1 name!"
player1_name = gets.chomp

puts "Please enter player2 name!"
player2_name = gets.chomp

puts "Welcome to Tic Tac Toe, #{player1_name} and #{player2_name}"

print game_board['1'] + " " + "|" + game_board['2'] + " " + "|" + " " + game_board['3']
puts
print game_board['4'] + " " + "|" + game_board['5'] + " " + "|" + " " + game_board['6']
puts 
print game_board['7'] + " " + "|" + game_board['8'] + " " + "|" + " " + game_board['9']
puts

#Player move should only be 1-9 and if place is already filled it should reprompt the player
puts "It's #{player1_name} turn now!"
puts "Please enter 1-9 to put x there"
location = gets.chomp
puts game_board[location]

puts "It's #{player2_name} turn now!"
puts "Please enter 1-9 to put x there"
location = gets.chomp
puts game_board[location]
