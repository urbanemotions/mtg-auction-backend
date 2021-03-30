class CreateAuctionbids < ActiveRecord::Migration[6.1]
  def change
    create_table :auctionbids do |t|
      t.float :bid
      t.references :user, null: false, foreign_key: true
      t.references :mtg, null: false, foreign_key: true

      t.timestamps
    end
  end
end
