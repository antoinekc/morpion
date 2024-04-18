class Player

  def initialize(name)
    name = @name
  end
  
  def choose_X_or_O #(name)
        puts "There are two signs to choose from: X or O"
        options = ["X - O"]
        puts options
        choice = ""
        while (choice != "X" || choice != "O") 
          choice = gets.chomp
            if choice == "X"
                sign = "X"
                #puts "your sign is #{sign}"
                break
            elsif choice == "O"
                sign = "O"
                #puts "your sign is #{sign}"
                break
            else 
                puts "tut tut, please only pick X or O"
            end
        end
        @sign = sign
      return @sign
    end
  
end
