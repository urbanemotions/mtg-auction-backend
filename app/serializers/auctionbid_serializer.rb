class AuctionbidSerializer < ActiveModel::Serializer
  attributes :id, :bid, :user_id, :mtgcard_id

  belongs_to :user
  belongs_to :mtgcard
end
