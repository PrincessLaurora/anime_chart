class AnimeChart::Anime
  
  attr_accessor :name, :score, :details
  
  def self.get_page
    Nokogiri::HTML(open("https://myanimelist.net/topanime.php?limit=0"))
  end  

  
 
  def self.scrape_list
    
    content = self.get_page.css("div #content .pb12")
    content.css(".ranking-list").each do |list|
    
    anime = self.new  
    
    anime.name = list.css("div.di-ib.clearfix a.hoverinfo_trigger.fl-l.fs14.fw-b").text
    
    anime
    #binding.pry
  
end
  end
  
    
  
  def self.list
    
    chart = []
    chart << self.scrape_list
    chart
  end
  

end