class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :maturity_rating
      t.integer :price
      t.string :genre
      t.integer :console_id

      t.timestamps
    end
  end
end
