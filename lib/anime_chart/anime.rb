class AnimeChart::Anime
  
  attr_accessor :name, :score, :details
  
  
 
  def self.scrape_list
    
    doc = Nokogiri::HTML(open("https://myanimelist.net/topanime.php?limit=0"))
    
    array = []
    
    anime = self.new  
    
    doc.css(".di-ib.clearfix").each do |list|
    
    anime.name = list.css("a.hoverinfo_trigger.fl-l.fs14.fw-b").text
    
    
    array << anime
    
    array
      #binding.pry
    end
  
  end
  

    
  


end