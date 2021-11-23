class AddColumnMuseumIdToPaintings < ActiveRecord::Migration[6.1]
  def change
    add_column :paintings, :museum_id, :integer
  end
end
