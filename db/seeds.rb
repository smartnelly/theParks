# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
u1 = User.create :name => 'Mandy', :username => 'mandy', :email => 'mandy@gmail.com', :password => 'chicken',  :mobile => '0435608320', :street => '9a David Pl', :suburb => 'Peakhurst', :city => 'Sydney', :country => 'Australia', :postcode => '2146'
u2 = User.create :name => 'Alex', :username => 'alex', :email => 'alex@gmail.com', :password => 'chicken',  :mobile => '0425496576', :street => '6-8 Meryla St', :suburb => 'Burwood', :city => 'Sydney', :country => 'Australia', :postcode => '2134'
u3 = User.create :name => 'Admin', :username => 'admin', :email => 'admin@gmail.com', :password => 'chicken', :admin => true
puts "#{ User.count } users"



Item.destroy_all
i1 = Item.create :name => 'NIKE AIR JORDAN1 HIGH OG HYPER ROYAL', :price => 850, :brand => 'NIKE', :description => 'The Air Jordan 1 Retro High OG ‘Hyper Royal’ takes on a weathered aesthetic, highlighted by a white leather upper with faded blue suede overlays. Contrasting neutral grey hits land on the Swoosh and padded collar, adding to the sneaker’s understated palette. OG branding elements include a Jordan Wings logo on the lateral collar flap and a woven Nike tongue tag. The high-top is mounted on a standard AJ1 rubber cupsole, featuring encapsulated Nike Air cushioning in the heel.', :image => 'https://cdn.shopify.com/s/files/1/0059/2871/4338/products/1618456330565AQPTM10NAVL0JGXWE5D8_1080x.jpg?v=1619366469'

i2 = Item.create :name => 'ADIDAS YEEZY BOOST 350 V2 BLACK', :price => 1250, :brand => 'ADIDAS', :description => "The Yeezy Boost 350 V2 was first spotted at Kanye West's Yeezy Season 3 and released in September 2016. This 'Black Reflective' colorway touched down in June 2019 and casts the shoe's flexible Primeknit upper in what appears to be a solely black hue. When hit with direct light, the shoe's laces and upper reveal powerful reflective elements that are sewn into the design. The responsive feel of full-length adidas Boost cushioning remains atop a durable rubber sole.", :image => 'https://cdn.shopify.com/s/files/1/0059/2871/4338/products/15978030805756CCMT7H9PYFH5A1T7BT3_1080x.jpg?v=1619394819'

i3 = Item.create :name => 'BAPE X LIL YACHTY GREY HOODIE', :price => 600, :brand => 'BAPE', :description => "Running on nearly 30 years of history, Japanese streetwear label BAPE is often recognised as one of the fore founding brands that paved the way for modern day streetwear. Up with the likes of Supreme, Stussy and even more recently OFF-WHITE. BAPE’s image, brand development and even clothing style is known to be synonymous with the themes of streetwear to this day. Originally started in 1993 by streetwear legend Nigo, the brand has given birth to an assortment of sub brands as well as been passed off from the hands of its original creator to Japanese fashion investment conglomerate ‘I.T Group’.", :image => 'https://cdn.shopify.com/s/files/1/0059/2871/4338/products/16019886078358Q5Z3QJE98PXMACLKWJQ_718a6b9e-fb96-4804-b4e6-1720f2cc31c8_1080x.jpg?v=1619360479'

i4 = Item.create :name => 'SUPREME FW17 HYSTERIC GLAMOUR BLACK TEXT HOODIE', :price => 435, :brand => 'SUPREME', :description => "Supreme’s deep rooted history within streetwear culture spans over twenty years and it’s prominence particularly in the late 2010’s mirrors the rise of streetwear becoming the culture everyone from designer houses to your local fast fashion chains are imitating, and at every step of the way Supreme has been at the helm.", :image => 'https://cdn.shopify.com/s/files/1/0059/2871/4338/products/160120948044964N8RZF36NEN1A0PFYZ3_015f8922-ca45-4ae3-8ac1-c70dea484b42_1080x.jpg?v=1619363564'


i5 = Item.create :name => 'SUPREME SS18 RED WAIST BAG', :price => 625, :brand => 'SUPREME', :description => "Supreme’s deep rooted history within streetwear culture spans over twenty years and it’s prominence particularly in the late 2010’s mirrors the rise of streetwear becoming the culture everyone from designer houses to your local fast fashion chains are imitating, and at every step of the way Supreme has been at the helm.", :image => 'https://cdn.shopify.com/s/files/1/0059/2871/4338/products/1536551728213SRPJ9E6ZZKAKKQGDP6VE_e87b902d-8c81-45d8-9832-6202367ba2fb_1080x.jpg?v=1619362990'

i6 = Item.create :name => 'FOG ESSENTIALS CREAM / BLACK TOTE BAG', :price => 250, :brand => 'FOG ESSENTIALS', :description => "The child of streetwear powerhouse Fear of God, Jerry Lorenzo created his subsidiary brand Fear of God Essentials as a means of providing fans of his brand unparalleled cut and sew garments which feature many of the features of his main line label at significantly lower price points. With pieces retailing at often 1/10th of their main line counterpart prices, the brand seeks to deliver not only affordability to Jerry Lorenzo fans but also accessibility.", :image => 'https://cdn.shopify.com/s/files/1/0059/2871/4338/products/161874782815891GCXXB1ZXKQHDEFEZDW_fafd0cd4-830c-4947-be5e-ab8748cdfd7e_1080x.jpg?v=1619395108'

puts "#{ Item.count } items"




Category.destroy_all
c1 = Category.create :name => 'shoes'
c2 = Category.create :name => 'clothes'
c3 = Category.create :name => 'bags'
puts "#{ Category.count } categories"

# Associations #######################

# items and categories

c1.items << i1 
c1.items << i2 
c2.items << i3 
c2.items << i4
c3.items << i5
c3.items << i6 





