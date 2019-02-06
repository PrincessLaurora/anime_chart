class AnimeChart::CLI
  
  def call
    welcome
    list_chart
  end
  
  def welcome
    puts "Welcome to Anime Chart!"
  end  
  
  def list_chart
    
   commands
       
     input = nil
      while input != "exit"
    
      input = gets.strip
     
      if input == "list"
        list
        puts " "
        commands
      elsif input.to_i > 0 && input.to_i < 51
        details(input)
        puts " "
        commands
      elsif input == "exit"
        bye
      else 
        puts "Invalid input, please type 'list', a number between 1 and 50 or tipe 'exit'"
        end  
      end
    end
    
  
    def list
      puts " "
      puts " "
        @chart = AnimeChart::Anime.scrape_list
      puts "******************************TOP 50 ANIME*********************************".colorize(:blue)
        @chart.each.with_index(1) do |anime, index|
      puts " "
      puts "#{index}) #{anime.name} ===> SCORE: #{anime.score}".colorize(:yellow)
      end
    end
    
    def bye
      puts "Matane!".colorize(:yellow)
     exit
    end  
  
    def commands
      puts "To check the 50 top anime on MyAnimeList, type 'list'."
      puts "No time to read the entire list? Type a number between 1 and 50 to check which anime is currently holding that position."
      puts "To exit the program type 'exit'."
    end

    def details(input)
       @chart = AnimeChart::Anime.scrape_list
       show = @chart[input.to_i-1]
       puts " "
       puts "#{input.to_i}) - #{show.name}".colorize(:yellow)
       puts " "
       puts "Click on the link below to check some details about this anime:"
       puts " "
       puts "#{show.details}".colorize(:blue) 
    end  
    
end


