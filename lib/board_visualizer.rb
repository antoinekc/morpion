class BoardVisualizer #for now working, the board displays in the right shape but values are fixed
    
    def initialize(hash)

        # hash = { "A1" => "", "A2" => "O", "A3" => "X",
        # "A4" => "", "A5" => "O", "A6" => "",
        # "A7" => "", "A8" => "O", "A9" => "" }

        puts "This is the state of the game"
        puts "|" + "-" * 23 + "|"
        puts "|" + " " * 7 + "|"  + " " * 7 + "|"  + " " * 7 + "|"
        puts "|" + " " *3 + "#{hash["A1"]}" + " " * 3 + "|" + " " *3 + "#{hash["A2"]}" + " " * 3 + "|" + " " *3 + "#{hash["A3"]}" + " " * 3 + "|"
        puts "|" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
        puts "|" + "-" * 23 + "|"
        puts "|" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
        puts "|" + " " *3 + "#{hash["B1"]}" + " " * 3 + "|" + " " *3 + "#{hash["B2"]}" + " " * 3 + "|" + " " *3 + "#{hash["B3"]}" + " " * 3 + "|"
        puts "|" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
        puts "|" + "-" * 23 + "|"
        puts "|" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
        puts "|" + " " *3 + "#{hash["C1"]}" + " " * 3 + "|" + " " *3 + "#{hash["C2"]}" + " " * 3 + "|" + " " *3 + "#{hash["C3"]}" + " " * 3 + "|"
        puts "|" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
        puts "|" + "-" * 23 + "|"
    end 
end

#hash_test = {"A1"=>"X", "A2"=>"X", "A3"=>"X", "B1"=>"", "B2"=>"", "B3"=>"", "C1"=>"", "C2"=>"", "C3"=>""}
# try1 = BoardVisualizer.new(hash_test)
# try1.board_visualizer
