class AnimeChart::Anime
  
  attr_accessor :rank, :name, :score, :details
  
  def self.chart
    
    chart = []
    chart << self.scrape_list
    chart
  end
  
  
  def self.scrape_list
    
    doc = Nokogiri::HTML(open("https://myanimelist.net/topanime.php?limit=0"))
    
    game = self.new
    
    game.rank = doc.css(".rank.ac").text
    
    game
    binding.pry
  
    end  
  

end