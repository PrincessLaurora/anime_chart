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
    
    ranks = []
    positions = doc.css("span.lightLink").text
    ranks << positions
    ranks.each do |rank|
    game.rank = rank  
    game
    binding.pry
  end  
end

end