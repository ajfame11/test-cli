class Cli

  def run
    welcome
    Scraper.get_games
    display_games
    menu
    goodbye
  end

    def welcome
    puts "Welcome to"
		puts ""
		puts "----------------------------------------"
		puts "               VR GAMER                 "
		puts "----------------------------------------"
    end

    def display_games
        Game.all.each.with_index(1) do |game, i|
          puts "#{i}.   #{game.name}"
          puts " "
        end
    end

    def menu
        input = nil
        while input != "exit"
          puts "Enter the number of the game you want more information on, type list to see list, or exit"
          input = gets.strip.downcase
          
         if input.to_i > 0 && input.to_i <= Game.all.length
            the_game = Game.all[input.to_i-1]
            display_game_info(the_game)
          elsif input == "list"
            display_games
          elsif input != "exit"
            puts "Invalid response."
          end
        end
      end
      
      def display_game_info(the_game)
        
        puts "Name:#{the_game.name}"
        puts " "
        puts "Price:#{the_game.price}"
        puts " "
        puts "Tags:#{the_game.tags}"
        puts " "
        puts "Description:#{the_game.description}"
        puts "-----------------------------------"
      end

      def goodbye
        puts "Thank you for using! :)"
      end

end


## Handles INPUT from User and OUTPUT to User