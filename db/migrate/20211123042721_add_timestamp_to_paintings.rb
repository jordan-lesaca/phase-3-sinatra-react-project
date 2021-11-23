class AddTimestampToPaintings < ActiveRecord::Migration[6.1]
  def change
    add_column :paintings, :created_at, :timestamp
    add_column :paintings, :updated_at, :timestamp
  end
end
