class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :style
      t.integer :year_born
      t.timestamps
    end
  end
end
