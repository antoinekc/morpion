=begin

=end

=begin
1. définition des cases avec les valeurs initiales 
2. choix de l'utiisateur
3. modification de l'array 
4. affichage de l'array modifie

def choice_user(user, position)
  
  plateau_initial = 

    @value = "0"
    if (user == 1)
        @value = "x"
    elsif (user == 2)
        @value = "o"
    end
    return (position, value)
end
=end

=begin
def plateau_initialize()
  plateau = {
    "A1" ==> "0"
    "A2" ==> "0"
    "A3" ==> "0"
    "B1" ==> "0"
    "B2" ==> "0"
    "B3" ==> "0"
    "C1" ==> "0"
    "C2" ==> "0"
    "C3" ==> "0"
}
=end
=begin
  #conditions de victoire: 
  A1, A2, A3 
  B1, B2, B3
  C1, C2, C3
  
  A1, B2, C3
  A3, B2, C1
  
  A1, B1, C1
  A2, B2, C2
  A3, B3, C3
=end


=begin
def victory_checker 
    case 
    when plateau_hash = conditions1
      puts "Victory"
    when plateau_hash = conditions2
      puts "Victory"
    when plateau_hash = conditions3
      puts "Victory"
    when plateau_hash = conditions4
      puts "Victory"
    when plateau_hash = conditions5
      puts "Victory"
    when plateau_hash = conditions6
      puts "Victory"
    when plateau_hash = conditions7
      puts "Victory"
    when plateau_hash = conditions8
      puts "Victory"
  end

  def victory_conditions
    conditions1 = { "A1" => "X", "A2" => "X", "A3" => "X"}
    conditions2 = { "B1" => "X", "B2" => "X", "B3" => "X"}
    conditions3 = { "C1" => "X", "C2" => "X", "C3" => "X"}

    conditions4 = { "A1" => "X", "B2" => "X", "C3" => "X"}
    conditions5 = { "A3" => "X", "B2" => "X", "C1" => "X"}

    conditions6 = { "A1" => "X", "B1" => "X", "C1" => "X"}
    conditions7 = { "A2" => "X", "B2" => "X", "C2" => "X"}
    conditions8 = { "A3" => "X", "B3" => "X", "C3" => "X"}

    conditions1 = { "A1" => "O", "A2" => "X", "A3" => "X"}
    conditions2 = { "B1" => "X", "B2" => "X", "B3" => "X"}
    conditions3 = { "C1" => "X", "C2" => "X", "C3" => "X"}

    conditions4 = { "A1" => "X", "B2" => "X", "C3" => "X"}
    conditions5 = { "A3" => "X", "B2" => "X", "C1" => "X"}

    conditions6 = { "A1" => "X", "B1" => "X", "C1" => "X"}
    conditions7 = { "A2" => "X", "B2" => "X", "C2" => "X"}
    conditions8 = { "A3" => "X", "B3" => "X", "C3" => "X"}
  end

end

=begin
board = BoardCase.new
board.tour
board.modification_du_plateau
=end

#binding.pry



def victory_test()
    
  hash = { "A1" => "X", "A2" => "X", "A3" => "X",
           "A4" => "", "A5" => "", "A6" => "",
           "A7" => "o", "A8" => "", "A9" => "" }

  value1 = hash["A1"]
  value2 = hash["A2"]
  value3 = hash["A3"]
  value4 = hash["A4"]
  value5 = hash["A5"]
  value6 = hash["A6"]
  value7 = hash["A7"]
  value8 = hash["A8"]
  value9 = hash["A9"]

  #HORIZONTAL CHECKS

  if (value1 != nil && value2 != nil && value3 != nil)
    if ((value1 == value2) && (value2 == value3)) && (value1 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur2 wins"
    end
  end
  if (value4 != nil && value5 != nil && value6 != nil)
    if ((value4 == value5) && (value5 == value6)) && (value4 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur2 wins"
    end
  end
  if (value7 != nil && value8 != nil && value9 != nil)
    if ((value7 == value8) && (value8 == value9)) && (value7 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur2 wins"
    end
  end

  # VERIFICATIONS VERTICALES
  if (value1 != nil && value4 != nil && value7 != nil)
    if ((value1 == value4) && (value4 == value7)) && (value1 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur2 wins"
    end
  end

  if (value2 != nil && value5 != nil && value8 != nil)
    if ((value2 == value5) && (value4 == value8)) && (value2 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur2 wins"
    end
  end

  if (value3 != nil && value6 != nil && value9 != nil)
    if ((value3 == value6) && (value6 == value9)) && (value3 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur2 wins"
    end
  end

  # CHECK DIAGONAUX

  if (value1 != nil && value5 != nil && value9 != nil)
    if ((value1 == value5) && (value5 == value9)) && (value1 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur 2 wins"
    end
  end

  if (value3 != nil && value5 != nil && value7 != nil)
    if ((value3 == value5) && (value5 == value7)) && (value3 == "X")
      puts "joueur 1 wins"
    else
      puts "joueur2 wins"
    end
  end
end

victory_test()



  def victory_test {hash}

  hash = { "A1" => "X", "A2" => "X" , "A3" => "X", 
            "A4" => "" , "A5" => "", "A6" => "", 
            "A7" => "o", "A8" => "", "A9" => ""}

  value1 = hash["A1"]
  value2 = hash["A2"]
  value3 = hash["A3"]
  value4 = hash["A4"]
  value5 = hash["A5"]
  value6 = hash["A6"]
  value7 = hash["A7"]
  value8 = hash["A8"]
  value9 = hash["A9"]

#HORIZONTAL CHECKS

  if (value1 != nil && value2 != nil && value3 != nil)
    if ((value1 == value2) && (value2 == value3)) && (value1 == "X")
        puts "joueur 1 wins"
        else 
        puts "joueur2 wins" 
  if (value4 != nil && value5 != nil && value6 != nil)
    if ((value4 == value5) && (value5 == value6)) && (value4 == "X")
      puts "joueur 1 wins"
      else 
    puts "joueur2 wins"  
  if (value7 != nil && value8 != nil && value9 != nil) 
    if ((value7 == value8) && (value8 == value9)) && (value7 == "X")
      puts "joueur 1 wins"
    else 
      puts "joueur2 wins"  

# VERIFICATIONS VERTICALES      
if (value1 != nil && value4 != nil && value7 != nil)
  if ((value1 == value4) && (value4 == value7)) && (value1 == "X")
    puts "joueur 1 wins"
    else 
  puts "joueur2 wins"  
  
if (value2 != nil && value5 != nil && value8 != nil)
  if ((value2 == value5) && (value4 == value8)) && (value2 == "X")
    puts "joueur 1 wins"
    else 
  puts "joueur2 wins"  

if (value3 != nil && value6 != nil && value9 != nil)
  if ((value3 == value6) && (value6 == value9)) && (value3 == "X")
    puts "joueur 1 wins"
    else 
  puts "joueur2 wins"  

# CHECK DIAGONAUX

if (value1 != nil && value5 != nil && value9 != nil)
  if ((value1 == value5) && (value5 == value9)) && (value1 == "X")
    puts "joueur 1 wins"
    else 
  puts "joueur2 wins"  

if (value3 != nil && value5 != nil && value7 != nil)
  if ((value3 == value5) && (value5 == value7)) && (value3 == "X")
    puts "joueur 1 wins"
    else 
  puts "joueur2 wins"  
    else 
      puts "Continuez de jouer"

      class BoardCase

  def tour #méthode qui permet d'avoir en sortie un hash représentant le tour de jeu du joueur ex : {} 
    user_input = gets.chomp
    @position = {user_input, "X"} #par exemple {"A1"=> "X"}
    return @position
  end
   

end 

def victory_test()
    
  hash = { "A1" => "", "A2" => "O", "A3" => "",
           "A4" => "", "A5" => "O", "A6" => "",
           "A7" => "", "A8" => "O", "A9" => "" }

  value1 = hash["A1"]
  value2 = hash["A2"]
  value3 = hash["A3"]
  value4 = hash["A4"]
  value5 = hash["A5"]
  value6 = hash["A6"]
  value7 = hash["A7"]
  value8 = hash["A8"]
  value9 = hash["A9"]

  #HORIZONTAL CHECKS

  if (value1 != nil && value2 != nil && value3 != nil)
    if ((value1 == value2) && (value2 == value3)) && ((value1 == "X" || value1 == "O"))
      puts "Winner is joueur #{value1}"
    end
  end
  if (value4 != nil && value5 != nil && value6 != nil)
    if ((value4 == value5) && (value5 == value6)) && ((value4 == "X" || value4 == "O"))
      puts "Winner is joueur #{value4}"
    end
  end
  if (value7 != nil && value8 != nil && value9 != nil)
    if ((value7 == value8) && (value8 == value9)) && ((value7 == "X" || value7 == "O"))
      puts "Winner is joueur #{value7}"
    end
  end

  # VERIFICATIONS VERTICALES
  if (value1 != nil && value4 != nil && value7 != nil)
    if ((value1 == value4) && (value4 == value7)) && ((value1 == "X" || value1 == "O"))
      puts "Winner is joueur #{value1}"
    end
  end

  if (value2 != nil && value5 != nil && value8 != nil)
    if ((value2 == value5) && (value5 == value8)) && ((value2 == "X" || value2 == "O"))
      puts "Winner is joueur #{value2}"
    end
  end

  if (value3 != nil && value6 != nil && value9 != nil)
    if ((value3 == value6) && (value6 == value9)) && ((value3 == "X" || value3 == "O"))
      puts "Winner is joueur #{value3}"
    end
  end

  # CHECK DIAGONAUX

  if (value1 != nil && value5 != nil && value9 != nil)
    if ((value1 == value5) && (value5 == value9)) && ((value1 == "X" || value1 == "O"))
      puts "Winner is joueur #{value1}"
    end
  end

  if (value3 != nil && value5 != nil && value7 != nil)
    if ((value3 == value5) && (value5 == value7)) && ((value3 == "X" || value3 == "O"))
      puts "Winner is joueur #{value3}"
    end
  end
end

victory_test()