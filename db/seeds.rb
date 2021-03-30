# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Auctionbid.destroy_all
User.destroy_all
Mtgcard.destroy_all

# users
u1 = User.create(name: "Sin", username: "Sin9")
u2 = User.create(name: "Chloe", username: "Chloe")
u3 = User.create(name: "Jean", username: "Grunt")
u4 = User.create(name: "Deirdre", username: "KittenPup")
u5 = User.create(name: "Dom", username: "Puppy")

# magic the gathering cards
m1 = Mtgcard.create(name: "Black Lotus", image: "https://i.ebayimg.com/images/g/x6IAAOSwcOBgKX36/s-l1600.jpg", year: 1993, 
    overall_condition: 7.5, centering: 9.5, corners: 8.0, edges: 7.5, surface: 7.5, card_serial_number: 3768233001, graded_by: "CGC")
m2 = Mtgcard.create(name: "Black Lotus", image: "https://i.ebayimg.com/images/g/X6sAAOSwlmBgV94g/s-l1600.jpg", year: 1993, 
    overall_condition: 8.5, centering: 8.0, corners: 9.5, edges: 9.0, surface: 9.0, card_serial_number: 11804783, graded_by: "BECKETT")
m3 = Mtgcard.create(name: "Timetwister", image: "https://i.ebayimg.com/images/g/uOAAAOSwxe1gVFT9/s-l1600.jpg", year: 1993, 
    overall_condition: 9.0, centering: 9.0, corners: 8.5, edges: 9.0, surface: 9.5, card_serial_number: 11514397, graded_by: "BECKETT")

# auction bids - users are allowed to edit(UPDATE) their bids instead of creating a new bid
a1 = Auctionbid.create(bid: 5000.00, user_id: u1.id, mtg_id: m1.id)
a2 = Auctionbid.create(bid: 9500.00, user_id: u2.id, mtg_id: m1.id)
a3 = Auctionbid.create(bid: 17770.70, user_id: u3.id, mtg_id: m1.id)
a4 = Auctionbid.create(bid: 35778.90, user_id: u4.id, mtg_id: m1.id)
a5 = Auctionbid.create(bid: 45778.90, user_id: u5.id, mtg_id: m1.id)

a6 = Auctionbid.create(bid: 8000.00, user_id: u5.id, mtg_id: m2.id)
a7 = Auctionbid.create(bid: 25000.00, user_id: u4.id, mtg_id: m2.id)
a8 = Auctionbid.create(bid: 47000.00, user_id: u3.id, mtg_id: m2.id)
a9 = Auctionbid.create(bid: 68000.00, user_id: u2.id, mtg_id: m2.id)
a10 = Auctionbid.create(bid: 68000.10, user_id: u1.id, mtg_id: m2.id)

a11 = Auctionbid.create(bid: 999.99, user_id: u5.id, mtg_id: m3.id)
a12 = Auctionbid.create(bid: 2500.00, user_id: u4.id, mtg_id: m3.id)
a13 = Auctionbid.create(bid: 10500.00, user_id: u1.id, mtg_id: m3.id)
a14 = Auctionbid.create(bid: 15000.00, user_id: u2.id, mtg_id: m3.id)
a15 = Auctionbid.create(bid: 17500.00, user_id: u3.id, mtg_id: m3.id)