class VictoryCalculator

  def initialize(game_choices)
    @game_choices = game_choices
    
    value1 = hash["A1"]
    value2 = game_choices["A2"]
    value3 = game_choices["A3"]
    value4 = game_choices["A4"]
    value5 = game_choices["A5"]
    value6 = game_choices["A6"]
    value7 = game_choices["A7"]
    value8 = game_choices["A8"]
    value9 = game_choices["A9"]

    #HORIZONTAL CHECKS

    puts "begin victory"
    if (value1 != nil && value2 != nil && value3 != nil)
      if ((value1 == value2) && (value2 == value3)) && ((value1 == "X" || value1 == "O"))
        puts "Winner is joueur #{value1}"
        return true
      end
    end
    if (value4 != nil && value5 != nil && value6 != nil)
      if ((value4 == value5) && (value5 == value6)) && ((value4 == "X" || value4 == "O"))
        puts "Winner is joueur #{value4}"
        return true
      end
    end
    if (value7 != nil && value8 != nil && value9 != nil)
      if ((value7 == value8) && (value8 == value9)) && ((value7 == "X" || value7 == "O"))
        puts "Winner is joueur #{value7}"
        return true
      end
    end

    # VERIFICATIONS VERTICALES

    if (value1 != nil && value4 != nil && value7 != nil)
      if ((value1 == value4) && (value4 == value7)) && ((value1 == "X" || value1 == "O"))
        puts "Winner is joueur #{value1}"
        return true
      end
    end

    if (value2 != nil && value5 != nil && value8 != nil)
      if ((value2 == value5) && (value5 == value8)) && ((value2 == "X" || value2 == "O"))
        puts "Winner is joueur #{value2}"
        return true
      end
    end

    if (value3 != nil && value6 != nil && value9 != nil)
      if ((value3 == value6) && (value6 == value9)) && ((value3 == "X" || value3 == "O"))
        puts "Winner is joueur #{value3}"
        return true
      end
    end

    # CHECK DIAGONAUX

    if (value1 != nil && value5 != nil && value9 != nil)
      if ((value1 == value5) && (value5 == value9)) && ((value1 == "X" || value1 == "O"))
        puts "Winner is joueur #{value1}"
        return true
      end
    end

    if (value3 != nil && value5 != nil && value7 != nil)
      if ((value3 == value5) && (value5 == value7)) && ((value3 == "X" || value3 == "O"))
        puts "Winner is joueur #{value3}"
        return true
      end
    end
  end
end

#victory_test()
