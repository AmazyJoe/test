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



create_product_entries("Samsung QLED tv", 560.99, 30.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/Ha4e6641661ac4bb88f4416813c4d014eA.jpg_300x300.jpg", "https://www.amazon.com/s?k=samsung+qled&crid=1P2SH32041AYF&sprefix=samsung+qle%2Caps%2C573&ref=nb_sb_ss_ts-doa-p_2_11", "amazon")
create_product_entries("Samsung QLED tv", 497.99, 80.00, "Fast Shipping", "https://m.media-amazon.com/images/I/71bmtncxa+L._AC_UY218_.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=samsung+Qled+tv", "alibaba")
create_product_entries("Samsung QLED tv", 495.99, 100.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/Y88AAOSwuWpjYT9G/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=samsung+qled&_sacat=0&LH_TitleDesc=0&_odkw=iphone+14+pro&_osacat=0", "ebay")

create_product_entries("LG OLED TV", 269.99, 60.00, "Fast Shipping", "https://m.media-amazon.com/images/I/91zoO1AAfBS._AC_UY218_.jpg", "https://www.amazon.com/s?k=LG+OLED&crid=QNU0S8F0UJBO&sprefix=lg+oled%2Caps%2C520&ref=nb_sb_noss_1", "amazon")
create_product_entries("LG OLED TV", 500.99, 30.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/Hade73df54cf94eb98321065fc04b2519H.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=lg+oled", "alibaba")
create_product_entries("LG OLED TV", 947.99, 70.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/NiwAAOSwSLZihO2W/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=LG+OLED+TV&_sacat=0&LH_TitleDesc=0&_odkw=samsung+qled&_osacat=0", "ebay")



create_product_entries("Macbook air", 399.99, 60.00, "Fast Shipping", "https://m.media-amazon.com/images/I/71f5Eu5lJSL._AC_UY218_.jpg", "https://www.amazon.com/s?k=macbook+air&crid=1AFPH667H92JX&sprefix=macbook%2Caps%2C401&ref=nb_sb_ss_ts-doa-p_2_7", "amazon")
create_product_entries("Macbook air", 220.99, 40.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/Hbd73563ca3174f178379c2d068acae0cG.jpg_300x300.jpg", "https://www.alibaba.com/product-detail/Unlocked-Used-Laptop-For-2020-13_1600251017576.html?spm=a2700.galleryofferlist.normal_offer.d_image.c5ca4a6ck7E1o0", "alibaba")
create_product_entries("Macbook air", 179.99, 50.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/sbYAAOSwPGlj~ZMF/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2380057.m570.l1313&_nkw=macbook+air&_sacat=0", "ebay")


create_product_entries("hp Elitebook", 355.99, 30.00, "Fast Shipping", "https://m.media-amazon.com/images/I/81JaA+TabBL._AC_UL320_.jpg", "https://www.amazon.com/s?k=hp+elitebook&crid=2P4L8NFSB0FBL&sprefix=hp+elitebook%2Caps%2C322&ref=nb_sb_noss_2", "amazon")
create_product_entries("hp Elitebook", 199.99, 10.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/H2b49388230124c0fb505f0588efe60b4M.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?IndexArea=product_en&CatId=&fsb=y&viewtype=&tab=all&SearchScene=&SearchText=hp+elitebook", "alibaba")
create_product_entries("hp Elitebook", 189.99, 40.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/xmQAAOSwv81kIh3K/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=hp+elite+book&_sacat=0&LH_TitleDesc=0&_odkw=macbook+air&_osacat=0", "ebay")


create_product_entries("iPad pro", 793.99, 70.00, "Fast Shipping", "https://m.media-amazon.com/images/I/81c+9BOQNWL._AC_UY218_.jpg", "https://www.amazon.com/s?k=ipad+pro&crid=19LNOKAYR6Z8Y&sprefix=ipad%2Caps%2C559&ref=nb_sb_ss_ts-doa-p_3_4", "amazon")
create_product_entries("iPad pro", 389.99, 60.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/Hb0b31e9a9156458eb80a1c1fbd975c4c1.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?spm=a2700.galleryofferlist.0.0.55a73956xA3Z5y&SearchScene=themePage&themeScene=cloudTheme&themeIds=feed&sceneId=leaderBoard&SearchText=ipad+pro&themeId=&themeName=leaderBoard", "alibaba")
create_product_entries("iPad pro", 779.99, 50.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/k2kAAOSw~u5iAPWP/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=ipad+pro&_sacat=0&LH_TitleDesc=0&_odkw=hp+elite+book&_osacat=0", "ebay")


create_product_entries("jbl flip 6", 99.99, 80.00, "Fast Shipping", "https://m.media-amazon.com/images/I/61Z05Wv903L._AC_UY218_.jpg", "https://www.amazon.com/s?k=jbl+flip6&crid=2ACHZG2JG23FE&sprefix=jbl+flip6%2Caps%2C472&ref=nb_sb_noss_1", "amazon")
create_product_entries("jbl flip 6", 110.99, 50.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/Aab2db5e84f6f485cbc2ac1fcb5a7d809O.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?IndexArea=product_en&CatId=&fsb=y&viewtype=&tab=all&SearchScene=&SearchText=jbl+flip+6", "alibaba")
create_product_entries("jbl flip 6", 79.99, 90.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/zrUAAOSwl01kGhns/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=jbl+flip6&_sacat=0&LH_TitleDesc=0&_odkw=ipad+pro&_osacat=0", "ebay")


create_product_entries("Nikon D3500", 719.99, 40.00, "Fast Shipping", "https://m.media-amazon.com/images/I/61s8FKpmqML._AC_UY218_.jpg", "https://www.amazon.com/s?k=nikon+camera&crid=MLOOMRS38GO6&sprefix=nikon+cam%2Caps%2C428&ref=nb_sb_ss_ts-doa-p_2_9", "amazon")
create_product_entries("Nikon D3500", 450.99, 20.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/H4b2c1b40f1374024a89a17ed233216c2v.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=Nikon+D3500+camra", "alibaba")
create_product_entries("Nikon D3500", 535.99, 70.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/qu4AAOSwbLRj6UAH/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=NIKON+D3500&_sacat=0&LH_TitleDesc=0&_odkw=jbl+flip6&_osacat=0", "ebay")




#name, price, delivery_cost, mode, image_url, website_url, website_name

create_product_entries("Samsung", 450.99, 20.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/H4b2c1b40f1374024a89a17ed233216c2v.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=Nikon+D3500+camra", "amazon")
create_product_entries("Samsung", 535.99, 70.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/qu4AAOSwbLRj6UAH/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=NIKON+D3500&_sacat=0&LH_TitleDesc=0&_odkw=jbl+flip6&_osacat=0", "alibaba")
create_product_entries("Samsung", 589.99, 40.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/rZUAAOSwZcBjo3a-/s-l225.webp", "https://www.ebay.com/itm/255890067629?epid=27052277424&hash=item3b943c90ad:g:rZUAAOSwZcBjo3a-&amdata=enc%3AAQAIAAAA4Dd1y62Rz5tJ3pcAtLqdYZi4LT8OsP0ap%2BwiTbnHPQ5Gqqw%2FRpy9Daj7KcHp%2BYlLTAivMyuWNQuZF%2Bjb3qiGZY1yycLTbUNRt1qDXza%2FJ1vFGs5xcjL4sE7U4UedijBNj%2FkGxV4xj%2F3YhLqEzcWs%2FpFoLEtw5ec5EehR7fkVgK1AGNAAKlx1GcaLT6LObm9bww0sTFnK%2FdVO%2BUevICJFucBzsjjmJml%2FAsgJM5aVRL%2B7RuSnaelZ7SELb%2BQRCh7t%2F%2FJKVJ9nP%2FvWvD5kPdYqnlc4a1E1%2BtK7%2FVSkoO9m7Mxg%7Ctkp%3ABFBMiKmm-_Zh", "ebay")
create_product_entries("LG", 719.99, 40.00, "Fast Shipping", "https://m.media-amazon.com/images/I/61s8FKpmqML._AC_UY218_.jpg", "https://www.amazon.com/s?k=nikon+camera&crid=MLOOMRS38GO6&sprefix=nikon+cam%2Caps%2C428&ref=nb_sb_ss_ts-doa-p_2_9", "amazon")
create_product_entries("LG", 450.99, 20.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/H4b2c1b40f1374024a89a17ed233216c2v.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=Nikon+D3500+camra", "alibaba")
create_product_entries("LG", 535.99, 70.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/qu4AAOSwbLRj6UAH/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=NIKON+D3500&_sacat=0&LH_TitleDesc=0&_odkw=jbl+flip6&_osacat=0", "ebay")
create_product_entries("Ramtons", 450.99, 20.00, "Fast Shipping", "https://s.alicdn.com/@sc04/kf/H4b2c1b40f1374024a89a17ed233216c2v.jpg_300x300.jpg", "https://www.alibaba.com/trade/search?tab=all&searchText=Nikon+D3500+camra", "amazon")
create_product_entries("Ramtons", 535.99, 70.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/qu4AAOSwbLRj6UAH/s-l300.webp", "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=NIKON+D3500&_sacat=0&LH_TitleDesc=0&_odkw=jbl+flip6&_osacat=0", "alibaba")
create_product_entries("Ramtons", 589.99, 40.00, "Fast Shipping", "https://i.ebayimg.com/thumbs/images/g/rZUAAOSwZcBjo3a-/s-l225.webp", "https://www.ebay.com/itm/255890067629?epid=27052277424&hash=item3b943c90ad:g:rZUAAOSwZcBjo3a-&amdata=enc%3AAQAIAAAA4Dd1y62Rz5tJ3pcAtLqdYZi4LT8OsP0ap%2BwiTbnHPQ5Gqqw%2FRpy9Daj7KcHp%2BYlLTAivMyuWNQuZF%2Bjb3qiGZY1yycLTbUNRt1qDXza%2FJ1vFGs5xcjL4sE7U4UedijBNj%2FkGxV4xj%2F3YhLqEzcWs%2FpFoLEtw5ec5EehR7fkVgK1AGNAAKlx1GcaLT6LObm9bww0sTFnK%2FdVO%2BUevICJFucBzsjjmJml%2FAsgJM5aVRL%2B7RuSnaelZ7SELb%2BQRCh7t%2F%2FJKVJ9nP%2FvWvD5kPdYqnlc4a1E1%2BtK7%2FVSkoO9m7Mxg%7Ctkp%3ABFBMiKmm-_Zh", "amazon")

