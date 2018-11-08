require 'rubygems'
require 'nokogiri'   
require 'open-uri'

class StartScrap
def initialize
@all_cours = []
@all_name = []



end


def perform
		page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
				courscryp = page.css("a.price").each do |cours|
				cours = cours.text
					@all_cours << cours

		end
		
			page2 = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
			page2.css("a.currency-name-container.link-secondary").each do |names|
	


		names = names.text
		@all_name << names
	
end 
		@allinfo = Hash[@all_name.zip(@all_cours)]
			return @allinfo
end
		



end