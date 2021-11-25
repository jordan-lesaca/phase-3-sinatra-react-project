class ChangeDataTypeInPaintings < ActiveRecord::Migration[6.1]
  def change
    change_column :paintings, :year_created, :integer
  end
end
