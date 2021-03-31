class MtgcardSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :year, :overall_condition, :centering, :corners, :edges, :surface, :card_serial_number, :graded_by
  
  has_many :auctionbids
  has_many :users, through: :auctionbids
end
