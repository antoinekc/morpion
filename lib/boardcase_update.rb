require 'pry'
require_relative 'board_visualizer.rb'

class BoardCase

  def initialize()
    @game_choices = {"A1"=>"_", "A2"=>"_", "A3"=>"_", "B1"=>"_", "B2"=>"_", "B3"=>"_", "C1"=>"_", "C2"=>"_", "C3"=>"_"}
    #user1
    #user2
  end

  def tour #méthode qui permet d'avoir en sortie un hash représentant le tour de jeu du joueur ex : {} 
    @user_input = gets.chomp
    #@position = {@user_input => "X"} #par exemple {"A1"=> "X"}
    @position = {@user_input => "X"} #par exemple {"A1"=> "X"}
    puts @position
    return @position
  end

  def boardcase_update  # méthode qui permet de modifier le hash initial et de sortir un nouveau hash modifié
    if @position.key?(@user_input)
      @plateau_hash[@user_input] = "X" #user.sign #soit X ou 0
    end
    puts @plateau_hash
    update = BoardVisualizer.
  end
end