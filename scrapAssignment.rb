require 'nokogiri'
require 'mysql2'
require 'open-uri'

def loop4

url="http://www.simplyrecipes.com/subject-index.php"

data= Nokogiri.HTML(open(url))

centerdata=data.css('.center-module')
 
centerdata.each do |i|

link = centerdata.css('div.center-module a').map { |link| link['href'] }

link.each do |j|

receipedata=mysql2::Client.new(:host => "localhost", :username => "root", :password => "webonise6186", :database => "rubydata")
insert=receipedata.query("INSERT INTO recipedata (name) values('#{j}')")

datarecipe = Nokogiri::HTML(open(j))

link2 = datarecipe.css('div.archive-entry-title a').map { |link| link['href'] }

link2.each do |k|

receipelist=Mysql2::Client.new(:host => "localhost", :username => "root", :password => "webonise6186", :database => "rubydata")
insert=receipelist.query("INSERT INTO recipelist (name) values('#{k}')")


end

end

end

end

