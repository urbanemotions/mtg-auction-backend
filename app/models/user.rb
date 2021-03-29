class User < ApplicationRecord
    has_many :auctionbids, dependent: :destroy
    has_many :mtgcards, through: :auctionbids

    validates :name, length: {minimum: 2}
    validates :username, length: {minimum: 2}

end
