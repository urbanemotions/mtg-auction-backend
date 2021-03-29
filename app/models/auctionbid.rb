class Auctionbid < ApplicationRecord
  belongs_to :user_id
  belongs_to :mtg_id
end
