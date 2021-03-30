class Auctionbid < ApplicationRecord
  belongs_to :user
  belongs_to :mtgcard
end
