class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.integer :year_created
      t.integer :artist_id
      t.timestamps
    end

  end
end
