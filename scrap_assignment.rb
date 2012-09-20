
def scrap_assignment

require 'nokogiri'

require 'open-uri'

recipe_url="http://www.simplyrecipes.com/subject-index.php"

 first_links_data=Nokogiri.HTML(open(recipe_url))
   
center_element_data_div=first_links_data.css('.center-module')
   
center_element_data_div.each do |i|

first_link = center_element_data_div.css('div.center-module a').map { |link| link['href'] }

for j in 1...4

recipe_link = Nokogiri::HTML(open(first_link[j]))

recipe_link_data=recipe_link.css('.archive-entry-title')
	
recipe_link_data.each do |k|

next_link = recipe_link_data.css('div.archive-entry-title a').map { |link| link['href'] }

next_link.each do |index|

detail_recipe=Nokogiri.HTML(open(index))

photo_link=detail_recipe.css('.photo')

photo_link.each do |index1|

receipedata=Mysql2::Client.new(:host => "localhost", :username => "root", :password => "webonise6186", :database => "rubydata")
insert=receipedata.query("INSERT INTO recipe_info(photo_link) values('#{index1}')")
end



detail_recipe_data=detail_recipe.css('#recipe-callout')
detail_recipe_data.each do |index2|
heading=index2.at_css('h2').text
ingridient=index2.at_css('#recipe-ingredients').text
method= index2.at_css('#recipe-method').text

receipedata=Mysql2::Client.new(:host => "localhost", :username => "root", :password => "webonise6186", :database => "rubydata")
insert=receipedata.query("INSERT INTO recipe_info(recipe_name,ingrideint,method) values('#{heading}','#{ingridient}','#{method}')")

end
end
end
end
end
end


 
