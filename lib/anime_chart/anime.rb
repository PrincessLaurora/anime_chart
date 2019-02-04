class AnimeChart::Anime
  
  attr_accessor :name, :score, :details
  
  

  #def self.anime_list
    
    #chart = []
    
    #chart << self.scrape_list
    
    #chart
  
  #end
  
 
  def self.scrape_list
    
    doc = Nokogiri::HTML(open("https://myanimelist.net/topanime.php?limit=0"))
    
    array = []
    
    anime = self.new  
    
    #content = doc.css("div.pb12")
    doc.css(".di-ib.clearfix").each do |list|
    
    anime.name = list.css("a.hoverinfo_trigger.fl-l.fs14.fw-b").text
  
    
    array << anime
    
    array
      
    
  end
    end
  
  
  
    
  


end