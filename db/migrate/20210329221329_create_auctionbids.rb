class CreateAuctionbids < ActiveRecord::Migration[6.1]
  def change
    create_table :auctionbids do |t|
      t.float :bid
      t.references :user_id, null: false, foreign_key: true
      t.references :mtg_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
