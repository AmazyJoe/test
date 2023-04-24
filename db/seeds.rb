# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# def create_product_entries(name, price, delivery_cost, mode, image_url, website_url, website_name)
#   websites = ["amazon", "ebay", "alibaba"]
#   websites.each do |website|
#     ecommerce_website = EcommerceWebsite.find_or_create_by(name: website.capitalize)
#     product = Product.create(
#       name: name,
#       price: price,
#       delivery_cost: delivery_cost,
#       mode: mode,
#       image_url: image_url,
#       website_url: website_url,
#       ecommerce_website: ecommerce_website
#     )
#     Rating.create(
#       product: product,
#       ecommerce_website: ecommerce_website,
#       rating: rand(1..5)
#     )
#   end
# end
def create_product_entries(name, price, delivery_cost, mode, image_url, website_url, website_name)
  ecommerce_website = EcommerceWebsite.find_or_create_by(name: website_name.capitalize)
  product = Product.create(
    name: name,
    price: price,
    delivery_cost: delivery_cost,
    mode: mode,
    image_url: image_url,
    website_url: website_url,
    ecommerce_website: ecommerce_website
  )
  Rating.create(
    product: product,
    ecommerce_website: ecommerce_website,
    rating: rand(1..5)
  )
end


create_product_entries("Samsung Galaxy S21", 269.99, 50.00, "Fast Shipping", "https://m.media-amazon.com/images/I/61jYjeuNUnL.__AC_SX300_SY300_QL70_FMwebp_.jpg", "https://www.amazon.com/Samsung-Galaxy-S21-5G-Version/dp/B08VLMQ3KS/ref=sr_1_2?crid=U39RSMTSMJP6&keywords=samsung+galaxy+s21&qid=1682071708&sprefix=samsung+galaxy+s21%2Caps%2C347&sr=8-2", "amazon")
create_product_entries("Samsung Galaxy S21", 360.99, 50.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/H8ffaafcbc30f4439b5ec8f7f346fb9a1i.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=samsung+galaxy+s21", "alibaba")
create_product_entries("Samsung Galaxy S21", 234.99, 50.00, "Fast Shipping", "https://i.ebayimg.com/images/g/UaQAAOSwwEVjVtkE/s-l500.jpg", "https://www.ebay.com/itm/255798953595?epid=28043687665&hash=item3b8ece467b:g:I1AAAOSwPhljW9x~&amdata=enc%3AAQAIAAAA4GgTB4H%2FZK6MMdgpkLg1mViaGC7J6MM1utmNO%2BYPKtNWcVWfYSTkiaqsOfeDj6faWqdFxtGzzH8G8l0T7vPQNb3nA4roNAOmxQPRshnb3FVrICdyLvJW77xrJBLGcLN4i6thrKYR%2FfWXHONk2TiUMMKzL0FWmGRhyQWIYptzGAEyBKlOSOgznPrdMooGxWES2jVnkLLxedJ1hE8qtv340zBL3rupIoXC1ALpEB2nrxah4phrGRI8%2BIo5ZvK2id210oVrQ07x6KNS%2BIp4FH95rJmUiN5N1y0suoPx2o2q8tNZ%7Ctkp%3ABFBMxveYtvRh&var=555735987575", "ebay")



create_product_entries("iPhone 13 pro", 139.00, 40.00, "Fast Shipping", "https://m.media-amazon.com/images/I/61sDyXAepuL._AC_SX679_.jpg", "https://www.amazon.com/iPhone-13-Pro-512GB-Gold/dp/B0BGYBBZ9R/ref=sr_1_1_sspa?crid=HSZAP9G5OS7I&keywords=iphone+13+pro&qid=1682345791&sprefix=iphone+13+pro%2Caps%2C358&sr=8-1-spons&psc=1&smid=AESX3141EPI7X&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzUkJCWTlDM01UWEUmZW5jcnlwdGVkSWQ9QTAzOTg1MjUzMk1NM0k3QU5URUUyJmVuY3J5cHRlZEFkSWQ9QTAxMzE3NzMzNVJGVDVTNVpYR0YwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==", "amazon")
create_product_entries("iPhone 13 pro",  "Out of stock", "","","", "", "alibaba")
create_product_entries("iPhone 13 pro", 94.99, 50.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/KwsAAOSwFOliejc2/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=iphone+13+pro&_sacat=0&LH_TitleDesc=0&_odkw=iphone+14+pro&_osacat=0", "ebay")



create_product_entries("iPhone 14 pro", 169.99, 50.00, "Fast Shipping", "https://m.media-amazon.com/images/I/51uD1lmrV8L._AC_UY218_.jpg", "https://www.amazon.com/s?k=iphone+14+pro&crid=2JTFUBIXC9942&sprefix=iphone+14+pro%2Caps%2C546&ref=nb_sb_noss_1", "amazon")
create_product_entries("iPhone 14 pro", 155.99, 80.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/FmUAAOSwKUFjYtg7/s-l300.webp", "https://www.alibaba.com/product-detail/Used-Mobile-Phones-14-Pro-unlock_1600636261799.html?spm=a2700.galleryofferlist.normal_offer.d_image.7cbd3a2czS19lu", "alibaba")
create_product_entries("iPhone 14 pro", 152.99, 150.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/FmUAAOSwKUFjYtg7/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2047675.m570.l1313&_nkw=iphone+14+pro&_sacat=0", "ebay")



create_product_entries("Samsung QLED tv", 560.99, 50.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/Ha4e6641661ac4bb88f4416813c4d014eA.jpg_300x300.jpg", "https://www.amazon.com/s?k=samsung+qled&crid=1P2SH32041AYF&sprefix=samsung+qle%2Caps%2C573&ref=nb_sb_ss_ts-doa-p_2_11", "amazon")
create_product_entries("Samsung QLED tv", 497.99, 50.00, "Fast Shipping", "https://m.media-amazon.com/images/I/71bmtncxa+L._AC_UY218_.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=samsung+Qled+tv", "alibaba")
create_product_entries("Samsung QLED tv", 495.99, 50.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/Y88AAOSwuWpjYT9G/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=samsung+qled&_sacat=0&LH_TitleDesc=0&_odkw=iphone+14+pro&_osacat=0", "ebay")

create_product_entries("LG OLED TV", 269.99, 50.00, "Fast Shipping", "https://m.media-amazon.com/images/I/91zoO1AAfBS._AC_UY218_.jpg", "https://www.amazon.com/s?k=LG+OLED&crid=QNU0S8F0UJBO&sprefix=lg+oled%2Caps%2C520&ref=nb_sb_noss_1", "amazon")
create_product_entries("LG OLED TV", 500.99, 50.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/Hade73df54cf94eb98321065fc04b2519H.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=lg+oled", "alibaba")
create_product_entries("LG OLED TV", 947.99, 50.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/NiwAAOSwSLZihO2W/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=LG+OLED+TV&_sacat=0&LH_TitleDesc=0&_odkw=samsung+qled&_osacat=0", "ebay")


