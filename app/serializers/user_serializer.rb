class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :auctionbids
  has_many :mtgcards, through: :auctionbids
end
