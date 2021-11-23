class ChangeColumnInMuseums < ActiveRecord::Migration[6.1]
  def change
    rename_column :museums, :create_at, :created_at
  end
end