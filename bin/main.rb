#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/board'

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
board = Board.new
board.print_board

# Player move should only be 1-9 and if place is already filled it should reprompt the player
puts "Please enter number 1-9 to put x or o there!"
move = gets.chomp
board.validate_move(move)
board.reset_board


