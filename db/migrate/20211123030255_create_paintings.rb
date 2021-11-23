class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :paint_type
      t.integer :year_created
    end
  end
end
