class AddCreateAtAndUpdateAtToArtists < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :created_at, :timestamp
    add_column :artists, :updated_at, :timestamp      
  end
end
