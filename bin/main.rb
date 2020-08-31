#!/usr/bin/env ruby
require_relative '../lib/player'

# Player names should contain at least one letter
puts "Please enter player1 name!"
player1_name = gets.chomp
player1_name = Player.validate_names(player1_name)
puts "#{player1_name}"
puts "Please enter player2 name!"
player2_name = gets.chomp
player2_name = Player.validate_names(player2_name)
puts "#{player2_name}"
player = Player.new(player1_name, player2_name)

puts "Welcome to Tic Tac Toe, #{player1_name} and #{player2_name}"

print game_board['1'] + " " + "|" + game_board['2'] + " " + "|" + " " + game_board['3']
puts
print game_board['4'] + " " + "|" + game_board['5'] + " " + "|" + " " + game_board['6']
puts 
print game_board['7'] + " " + "|" + game_board['8'] + " " + "|" + " " + game_board['9']
puts

# #Player move should only be 1-9 and if place is already filled it should reprompt the player
# puts "It's #{player1_name} turn now!"
# puts "Please enter 1-9 to put x there"
# location = gets.chomp
# puts game_board[location]

# puts "It's #{player2_name} turn now!"
# puts "Please enter 1-9 to put x there"
# location = gets.chomp
# puts game_board[location]
