class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :year_created
      t.boolean :in_exhibition
      t.integer :artist_id
      t.timestamps
    end
  end
end