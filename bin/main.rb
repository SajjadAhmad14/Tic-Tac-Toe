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
board = Board.new(player)
board.print_board
board.reset_board
board.print_board

# loop do
  puts "#{player.name1}, it's you turn! Please enter in 1-9 in blank location only"
  move = gets.chomp
  move = board.validate_move(move)
  board.update_board(move, player1_name)
  board.print_board

# end
