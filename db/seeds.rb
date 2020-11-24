# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |n|
    Customer.create!(
      email: "test#{n + 1}@test.com",
      first_name: "名#{n + 1}",
      last_name: "姓#{n + 1}",
      first_name_kana: "メイ",
      last_name_kana: "セイ",
      password: "123456",
      postcode: "1234567",
      address: "東京都渋谷区神南1丁目19-11 パークウェースクエア2 4階#{n + 1}",
      telephone_number: "09012345678"
    )
end

  Admin.create!(
    email: "admin@admin",
    password: "000000"
  )
  Genre.create!(
    name: "ケーキ",
    is_active: [['有効', true], ['無効', false]]
  )
  Genre.create!(
    name: "クッキー",
    is_active: [['有効', true], ['無効', false]]
  )
  Genre.create!(
    name: "プリン",
    is_active: [['有効', true], ['無効', false]]
  )
  Genre.create!(
    name: "キャンディ",
    is_active: [['有効', true], ['無効', false]]
  )

  Item.create!(
    name: "フルーツケーキ",
    body: "たくさんのフルーツを使ったショートケーキです。",
    price: "400",
    genre_id: 1,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/ケーキ1.jpg")
  )
  Item.create!(
    name: "抹茶モンブラン",
    body: "京都府産の抹茶を贅沢に使用したモンブランです。",
    price: "450",
    genre_id: 1,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/ケーキ2.jpg")
  )
  Item.create!(
    name: "イチゴタルト",
    body: "みんな大好きあまおうをたっぷりとした定番の苺タルトです。",
    price: "500",
    genre_id: 1,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/ケーキ3.jpg")
  )
  Item.create!(
    name: "マカロンケーキ",
    body: "マカロンのデコレーションが可愛いコーヒー味のケーキです。",
    price: "550",
    genre_id: 1,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/ケーキ4.jpg")
  )
  Item.create!(
    name: "アイシングクッキー",
    body: "華やかで可愛らしいクッキーです。",
    price: "450",
    genre_id: 2,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/クッキー1.jpg")
  )
  Item.create!(
    name: "チョコチップクッキー",
    body: "誰からも愛される懐かしい味。",
    price: "200",
    genre_id: 2,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/クッキー2.jpg")
  )
  Item.create!(
    name: "スノーマンクッキー",
    body: "クリスマスシーズン限定商品。",
    price: "250",
    genre_id: 2,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/クッキー3.jpg")
  )
  Item.create!(
    name: "ショートブレッド",
    body: "シンプルイズベスト！",
    price: "250",
    genre_id: 2,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/クッキー4.jpg")
  )
  Item.create!(
    name: "カスタードプリン",
    body: "こだわり卵と生クリームを使用したなめらかなプリンです。",
    price: "350",
    genre_id: 3,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/プリン1.jpg")
  )
  Item.create!(
    name: "フルーツプリン",
    body: "フルーツが上に乗った豪華なプリンです。",
    price: "500",
    genre_id: 3,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/プリン2.jpg")
  )
  Item.create!(
    name: "かぼちゃプリン",
    body: "かぼちゃの優しい甘みが感じられる優しいプリンです。",
    price: "450",
    genre_id: 3,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/プリン3.jpg")
  )
  Item.create!(
    name: "杏仁プリン",
    body: "とろとろの食感がたまらない。",
    price: "250",
    genre_id: 3,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/プリン4.jpg")
  )
  Item.create!(
    name: "フルーツキャンディ",
    body: "アップル・オレンジ・メロン・ストロベリーなど9種類の味が楽しめるキャンディ。",
    price: "200",
    genre_id: 4,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/キャンディ1.jpg")
  )
  Item.create!(
    name: "和柄キャンディ",
    body: "見た目も華やかな和柄キャンディ。",
    price: "300",
    genre_id: 4,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/キャンディ2.jpg")
  )
  Item.create!(
    name: "キャンディバー",
    body: "グリーンアップルとオレンジ味のペロペロキャンディです。",
    price: "150",
    genre_id: 4,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/キャンディ3.jpg")
  )
  Item.create!(
    name: "ジェリービーンズ",
    body: "ポップでカラフルなジェリービーンズです。",
    price: "100",
    genre_id: 4,
    is_active: [['販売中', true], ['販売停止', false]],
    image: open("./app/assets/images/キャンディ4.jpg")
  )

  4.times do |n|
    Item.create!(
      name: "ショートケーキ#{n + 1}",
      body: "甘過ぎなくて美味しい#{n + 1}",
      price: "#{1000 + (n * 1000)}",
      genre_id: n + 1,
      is_active: [['販売中', true], ['販売停止', false]],
      image: open("./app/assets/images/no_image.jpg")
    )
  end

9.times do |n|
  Shipping.create!(
    name: "test#{n + 1}",
    postcode: "123456#{n + 1}",
    address: "東京都渋谷区神南1丁目19-11 パークウェースクエア2 4階#{n + 1}",
    customer_id: n + 1
  )
end

5.times do |n|
  Order.create!(
    customer_id: n + 1,
    address: "東京都渋谷区神南1丁目19-11 パークウェースクエア2 4階#{n + 1}",
    postcode: "123456#{n + 1}",
    name: "test#{n + 1}",
    postage: "800",
    pay_amount: "#{1000 + (n * 1000) +800}",
    payment_method: "クレジットカード"
  )
end

5.times do |n|
  OrderItem.create!(
    item_id: n + 1,
    order_id: n + 1,
    amount: n + 3,
    price: "#{1000 + (n * 1000)}"
  )
end