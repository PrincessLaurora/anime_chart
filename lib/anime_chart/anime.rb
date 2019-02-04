class AnimeChart::Anime
  
  attr_accessor :name, :score, :details
  
  
 def self.scrape_list
    
    doc = Nokogiri::HTML(open("https://myanimelist.net/topanime.php?limit=0"))
    
    chart = []
    
    doc.css("div.di-ib.clearfix").each do |list|
      
    anime = self.new
    
    anime.name = list.css("a.hoverinfo_trigger.fl-l.fs14.fw-b").text
     
    chart << anime
    end
    
    chart
    #binding.pry
  end

  


end