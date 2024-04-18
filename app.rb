require 'bundler'
require 'pry'

#$:.unshift File.expand_path("./lib", __FILE__)

require_relative 'lib/player.rb'
require_relative 'lib/boardcase_update'
require_relative 'lib/board_visualizer'
require_relative 'lib/victory_calculator.rb'

Bundler.require

puts "-" * 35
puts "WELCOME TO THE AMAZING TIC TACTIC GAME"
puts "-" * 35

puts "We need two players to play the game"

puts "player 1's username:"
puts ">"

player1 = gets.chomp

player1 = Player.new("player1")
puts "You will play with the X"
# sign1 = player1.choose_X_or_O
# puts "#{player1} sign is : #{sign1}"

sleep 1

puts "-" *30
puts "Player 2's username"
puts ">"
player2 = gets.chomp
player2 = Player.new("player2")
puts "You will play with the O"

sleep 1


def game_execution()
    game = BoardCase.new
    played = 0
    until played == 9
        game.tour("X")
        game.tour("O")
        played += 1
    end
end    

game_execution


