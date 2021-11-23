class AddColumnToPaintings < ActiveRecord::Migration[6.1]
  def change
    add_column :paintings, :artist_id, :integer
  end
end
