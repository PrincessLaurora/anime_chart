class AnimeChart::CLI
  
  def call
    list_chart
    #anime_details
    #goodbye
  end
  
  def list_chart
    puts "Welcome to Anime Chart! If you want to check the 50 top anime according to MyAnimeList type list. No time to read the entire list? Type a number between 1 and 50 to check which anime is currently holding that position."
    @chart = AnimeChart::Anime.chart
    @chart.each do |game|
      puts "#{game.rank}"
    end
  end  
  
end