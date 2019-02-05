class AnimeChart::CLI
  
  def call
    list_chart
    anime_details
    #goodbye
  end
  
  def list_chart
    puts "Welcome to Anime Chart! If you want to check the 50 top anime by MyAnimeList, type list. 
    No time to read the entire list? Type a number between 1 and 50 to check which anime is currently holding that position.
    To exit the program type exit."
     input = nil
    while input != "exit"
      input = gets.strip
      if input == "list"
      list
      elsif input.to_i > 0
     puts "te lo dico dopo"
    else 
      puts "salvati"
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
    

  
end

