def scrap_assignment

  require 'nokogiri'

   require 'mysql2'

   require 'open-uri'

   url="http://www.simplyrecipes.com/subject-index.php"

   first_links_data=Nokogiri.HTML(open(url))
   center_element_data=first_links_data.css('.center-module')
   
center_element_data.each do |i|

   link = center_element_data.css('div.center-module a').map { |link| link['href'] }
    for j in 1...20

       receipedata=Mysql2::Client.new(:host => "localhost", :username => "root", :password => "webonise6186", :database => "rubydata")

     insert=receipedata.query("INSERT INTO recipe_link (link_name) values('#{link[j]}')")

      datarecipe = Nokogiri::HTML(open(link[j]))

     link2 = datarecipe.css('div.archive-entry-title a').map { |link| link['href'] }

	 for k in 1...20

       archeivedata=datarecipe.css('.archive-entry-description') 

           archeivedata.each do |k1|

   insert=receipedata.query("INSERT INTO next_link (link_name,description) values('#{link2[k]}','#{k1}')")  
end 
end
end 
end
end

