class Mtgcard < ApplicationRecord
    has_many :auctionbids, dependent: :destroy
    has_many :users, through: :auctionbids
end
