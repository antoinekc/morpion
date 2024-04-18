require 'pry'
require_relative 'board_visualizer.rb'
#require_relative './lib/victory_calculator.rb'

class BoardCase

  def initialize
    puts "test"
    @game_choices = {"A1"=>"_", "A2"=>"_", "A3"=>"_", "B1"=>"_", "B2"=>"_", "B3"=>"_", "C1"=>"_", "C2"=>"_", "C3"=>"_"}
    #user1
    #user2
  end

  def tour(arg) #méthode qui permet d'avoir en sortie un hash représentant le tour de jeu du joueur ex : {} 
    BoardVisualizer.new(@game_choices)
    @user_input = gets.chomp
    #@position = {@user_input => "X"} #par exemple {"A1"=> "X"}

    @position = {@user_input => arg} #par exemple {"A1"=> "X"}
    puts @position
    puts "test2"
    boardcase_update(arg)
    #return @position
  end

  def boardcase_update(arg)  # méthode qui permet de modifier le hash initial et de sortir un nouveau hash modifié
    #puts @game_choices
    if @position.key?(@user_input)
      @game_choices[@user_input] = arg #user.sign #soit X ou 0
    end
    puts "test3: #{@game_choices}"

    #update = BoardVisualizer.new()
  end
end
