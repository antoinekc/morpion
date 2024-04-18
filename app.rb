require 'bundler'
require 'pry'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

# require_relative './lib/board.rb'
require_relative './lib/victory_calculator'
require_relative './lib/board_visualizer'
require_relative './lib/player'


# puts "WELCOME TO THE AMAZING TIC TACTIC GAME"

# puts "We need two players to play the game"

# puts "player 1's username:"
# puts ">"
# player1 = gets.chomp

# player1 = Player.new("player1")
# sign1 = player1.choose_X_or_O
# puts "Your sign is : #{choice}"

# puts "Player 2's username"
# player2 = gets.chomp
# player2 = Player.new("player2")
# if choice1 == "X"
    

 hash = { "A1" => "O", "A2" => "O", "A3" => "X",
          "B1" => "X", "B2" => "O", "B3" => "X",
          "C1" => "O", "C2" => "O", "C3" => "O" }


 result = VictoryCalculator.new(hash)
 visualize = BoardVisualizer.new(hash)


end
    #METHODE WHO_START
    

    # INITIALIZE GAME
    #return = boardcase

#. Afficher le jeu vide depuis la classe boardcase update et de puis la méthode game choice
#. On appelle la méthode


