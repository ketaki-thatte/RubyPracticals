require 'nokogiri'
require 'rubygems'
require 'open-uri'

def loop4
$url="http://www.simplyrecipes.com/subject-index.php"
$data= Nokogiri.HTML(open(url))
$center=data.css('.center-module')
 
center.each do |i|
 puts i.at_css('h2').text
l = data.css('div.center-module a').map { |link| link['href'] }

l.each do |j|
data=mysql2::Client.new(:host => "localhost", :username => "root", :password => "webonise6186", :database => "rubydata")
insert=data.query("INSERT INTO receipedata (name) values('#{j}')")
data2 = Nokogiri::HTML(open(j))
l2 = data2.css('div.archive-entry-title a').map { |link| link['href'] }

l2.each do |k|

end

end

end

end


Answer---->

mysql> create table recepiedata (id int(11) PRIMARY KEY AUTO_INCREMENT, link varchar(200));
Query OK, 0 rows affected (0.09 sec)

mysql> desc receipedb;

+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int(11)      | NO   | PRI | NULL    | auto_increment |
|link  | varchar(200) | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)


mysql> select * from timepass;
+-----+--------------------------------------------------------+
| id  | name                                                   |
+-----+--------------------------------------------------------+
|   1 | TImepass text                                          |
|   2 | ${l}                                                   |
|   3 | l[0]                                                   |
|   4 | http://www.simplyrecipes.com/recipe-index.php          |
|   5 | http://www.simplyrecipes.com/tag/Acorn%20Squash        |
|   6 | http://www.simplyrecipes.com/tag/Adobado               |
|   7 | http://www.simplyrecipes.com/tag/Adobo                 |
|   8 | http://www.simplyrecipes.com/tag/African               |
|   9 | http://www.simplyrecipes.com/tag/Agua%20Fresca         |
|  10 | http://www.simplyrecipes.com/tag/Ahi%20Tuna            |
|  11 | http://www.simplyrecipes.com/tag/Almond                |
|  12 | http://www.simplyrecipes.com/tag/Apple                 |
|  13 | http://www.simplyrecipes.com/tag/Apple%20Cake          |
|  14 | http://www.simplyrecipes.com/tag/Apple%20Cider         |
|  15 | http://www.simplyrecipes.com/tag/Apple%20Pie           |
|  16 | http://www.simplyrecipes.com/tag/Applesauce            |
|  17 | http://www.simplyrecipes.com/tag/Apricot               |
|  18 | http://www.simplyrecipes.com/tag/Arame                 |
|  19 | http://www.simplyrecipes.com/tag/Artichoke             |
|  20 | http://www.simplyrecipes.com/tag/Arugula               |
|  21 | http://www.simplyrecipes.com/tag/Arugula%20Salad       |
|  22 | http://www.simplyrecipes.com/tag/Asparagus             |
|  23 | http://www.simplyrecipes.com/tag/Avocado               |
|  24 | http://www.simplyrecipes.com/tag/Bacon                 |
|  25 | http://www.simplyrecipes.com/tag/Baked%20Apple         |
|  26 | http://www.simplyrecipes.com/tag/Baked%20Beans         |
|  27 | http://www.simplyrecipes.com/tag/Baklava               |
|  28 | http://www.simplyrecipes.com/tag/Banana                |
|  29 | http://www.simplyrecipes.com/tag/Barbecue              |
|  30 | http://www.simplyrecipes.com/tag/Barbecue%20Sauce      |
|  31 | http://www.simplyrecipes.com/tag/Bark                  |
|  32 | http://www.simplyrecipes.com/tag/Barley                |
|  33 | http://www.simplyrecipes.com/tag/Basil                 |
|  34 | http://www.simplyrecipes.com/tag/BBQ                   |
|  35 | http://www.simplyrecipes.com/tag/Bean                  |
|  36 | http://www.simplyrecipes.com/tag/Bean%20Salad          |
|  37 | http://www.simplyrecipes.com/tag/Bean%20Threads        |
|  38 | http://www.simplyrecipes.com/tag/Beef                  |
|  39 | http://www.simplyrecipes.com/tag/Beef%20Roast          |
|  40 | http://www.simplyrecipes.com/tag/Beef%20Stew           |
|  41 | http://www.simplyrecipes.com/tag/Beer                  |
|  42 | http://www.simplyrecipes.com/tag/Beet                  |
|  43 | http://www.simplyrecipes.com/tag/Beet%20Salad          |
|  44 | http://www.simplyrecipes.com/tag/Bell%20Pepper         |
|  45 | http://www.simplyrecipes.com/tag/Berries               |
|  46 | http://www.simplyrecipes.com/tag/Berry                 |
|  47 | http://www.simplyrecipes.com/tag/Beurre%20Blanc        |
|  48 | http://www.simplyrecipes.com/tag/Biscotti              |
|  49 | http://www.simplyrecipes.com/tag/Biscuit               |
|  50 | http://www.simplyrecipes.com/tag/Bison                 |
|  51 | http://www.simplyrecipes.com/tag/Bisque                |
|  52 | http://www.simplyrecipes.com/tag/Black%20Bean          |
|  53 | http://www.simplyrecipes.com/tag/Black%20Beans         |
|  54 | http://www.simplyrecipes.com/tag/Black%20Eyed%20Peas   |
|  55 | http://www.simplyrecipes.com/tag/Blackberry            |
|  56 | http://www.simplyrecipes.com/tag/Blondie               |
|  57 | http://www.simplyrecipes.com/tag/Blood%20Orange        |
|  58 | http://www.simplyrecipes.com/tag/Blue%20Cheese         |
|  59 | http://www.simplyrecipes.com/tag/Blueberry             |
|  60 | http://www.simplyrecipes.com/tag/Bok%20Choy            |
|  61 | http://www.simplyrecipes.com/tag/Bolognese             |
|  62 | http://www.simplyrecipes.com/tag/Bouillon              |
|  63 | http://www.simplyrecipes.com/tag/Bourbon               |
|  64 | http://www.simplyrecipes.com/tag/Bourbon%20Sauce       |
|  65 | http://www.simplyrecipes.com/tag/Boursin               |
|  66 | http://www.simplyrecipes.com/tag/Boysenberry           |
|  67 | http://www.simplyrecipes.com/tag/Braised%20Beef        |
|  68 | http://www.simplyrecipes.com/tag/Branzino              |
|  69 | http://www.simplyrecipes.com/tag/Brazilian             |
|  70 | http://www.simplyrecipes.com/tag/Bread                 |
|  71 | http://www.simplyrecipes.com/tag/Bread%20Pudding       |
|  72 | http://www.simplyrecipes.com/tag/Breakfast             |
|  73 | http://www.simplyrecipes.com/tag/Breakfast%20Casserole |
|  74 | http://www.simplyrecipes.com/tag/Brie                  |
|  75 | http://www.simplyrecipes.com/tag/Brisket               |
|  76 | http://www.simplyrecipes.com/tag/Broccoli              |
|  77 | http://www.simplyrecipes.com/tag/Broccoli%20Rabe       |
|  78 | http://www.simplyrecipes.com/tag/Brown%20Butter        |
|  79 | http://www.simplyrecipes.com/tag/Brown%20Derby         |
|  80 | http://www.simplyrecipes.com/tag/Browned%20Butter      |
|  81 | http://www.simplyrecipes.com/tag/Brownies              |
|  82 | http://www.simplyrecipes.com/tag/Brunch                |
|  83 | http://www.simplyrecipes.com/tag/Bruschetta            |
|  84 | http://www.simplyrecipes.com/tag/Brussels%20Sprouts    |
|  85 | http://www.simplyrecipes.com/tag/Buckwheat             |
|  86 | http://www.simplyrecipes.com/tag/Buffalo               |
|  87 | http://www.simplyrecipes.com/tag/Bun                   |
|  88 | http://www.simplyrecipes.com/tag/Bundt%20Cake          |
|  89 | http://www.simplyrecipes.com/tag/Burger                |
|  90 | http://www.simplyrecipes.com/tag/Burrito               |
|  91 | http://www.simplyrecipes.com/tag/Butter                |
|  92 | http://www.simplyrecipes.com/tag/Butter%20Pecan        |
|  93 | http://www.simplyrecipes.com/tag/Butter%20Sauce        |
|  94 | http://www.simplyrecipes.com/tag/Butterflied%20chicken |
|  95 | http://www.simplyrecipes.com/tag/Buttermilk            |
|  96 | http://www.simplyrecipes.com/tag/Butternut%20Squash    |
|  97 | http://www.simplyrecipes.com/tag/Butterscotch          |
|  98 | http://www.simplyrecipes.com/tag/Cabbage               |
|  99 | http://www.simplyrecipes.com/tag/Cacciatore            |
| 100 | http://www.simplyrecipes.com/tag/Cactus                |
| 101 | http://www.simplyrecipes.com/tag/Cajun                 |
| 102 | http://www.simplyrecipes.com/tag/Cake                  |
| 103 | http://www.simplyrecipes.com/tag/Calamari              |
| 104 | http://www.simplyrecipes.com/tag/Candy                 |
| 105 | http://www.simplyrecipes.com/tag/Canned%20Sardine      |
| 106 | http://www.simplyrecipes.com/tag/Canned%20Tuna         |
| 107 | http://www.simplyrecipes.com/tag/Cannellini%20Bean     |
| 108 | http://www.simplyrecipes.com/tag/Canning               |
| 109 | http://www.simplyrecipes.com/tag/Cantaloupe            |
| 110 | http://www.simplyrecipes.com/tag/Caponata              |
| 111 | http://www.simplyrecipes.com/tag/Caramel               |
| 112 | http://www.simplyrecipes.com/tag/Caramelized%20Onion   |
| 113 | http://www.simplyrecipes.com/tag/Caraway               |
| 114 | http://www.simplyrecipes.com/tag/Carbonara             |
| 115 | http://www.simplyrecipes.com/tag/Cardamom              |
| 116 | http://www.simplyrecipes.com/tag/Caribbean             |
| 117 | http://www.simplyrecipes.com/tag/Carne%20Asada         |
| 118 | http://www.simplyrecipes.com/tag/Carnitas              |
| 119 | http://www.simplyrecipes.com/tag/Carrot                |
| 120 | http://www.simplyrecipes.com/tag/Carrot%20Salad        |
| 121 | http://www.simplyrecipes.com/tag/Cashew                |
| 122 | http://www.simplyrecipes.com/tag/Casserole             |
| 123 | http://www.simplyrecipes.com/tag/Cassis                |
| 124 | http://www.simplyrecipes.com/tag/Cauliflower           |
| 125 | http://www.simplyrecipes.com/tag/Celery                |
| 126 | http://www.simplyrecipes.com/tag/Celery%20Root         |
| 127 | http://www.simplyrecipes.com/tag/Ceviche               |
| 128 | http://www.simplyrecipes.com/tag/Chai                  |
| 129 | http://www.simplyrecipes.com/tag/Champagne             |
| 130 | http://www.simplyrecipes.com/tag/Chanterelle           |
| 131 | http://www.simplyrecipes.com/tag/Chard                 |
| 132 | http://www.simplyrecipes.com/tag/Chayote               |
| 133 | http://www.simplyrecipes.com/tag/Cheese                |
| 134 | http://www.simplyrecipes.com/tag/Cheesecake            |
| 135 | http://www.simplyrecipes.com/tag/Cherry                |
| 136 | http://www.simplyrecipes.com/tag/Cherry%20Tomato       |
| 137 | http://www.simplyrecipes.com/tag/Chestnut              |
| 138 | http://www.simplyrecipes.com/tag/Chicken               |
| 139 | http://www.simplyrecipes.com/tag/Chicken%20Breast      |
| 140 | http://www.simplyrecipes.com/tag/Chicken%20Curry       |
| 141 | http://www.simplyrecipes.com/tag/Chicken%20Drumstick   |
| 142 | http://www.simplyrecipes.com/tag/Chicken%20Feet        |
| 143 | http://www.simplyrecipes.com/tag/Chicken%20Leg         |
| 144 | http://www.simplyrecipes.com/tag/Chicken%20Liver       |
| 145 | http://www.simplyrecipes.com/tag/Chicken%20Roast       |
| 146 | http://www.simplyrecipes.com/tag/Chicken%20Roulade     |
| 147 | http://www.simplyrecipes.com/tag/Chicken%20Salad       |
| 148 | http://www.simplyrecipes.com/tag/Chicken%20Soup        |
| 149 | http://www.simplyrecipes.com/tag/Chicken%20Stew        |
| 150 | http://www.simplyrecipes.com/tag/Chicken%20Stock       |
| 151 | http://www.simplyrecipes.com/tag/Chicken%20Thigh       |
| 152 | http://www.simplyrecipes.com/tag/Chicken%20Wing        |
+-----+--------------------------------------------------------+
152 rows in set (0.00 sec)





