class CreateMtgcards < ActiveRecord::Migration[6.1]
  def change
    create_table :mtgcards do |t|
      t.string :name
      t.string :image
      t.integer :year
      t.float :overall_condition
      t.float :centering
      t.float :corners
      t.float :edges
      t.float :surface
      t.integer :card_serial_number
      t.string :graded_by

      t.timestamps
    end
  end
end
