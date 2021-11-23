class CreateMuseum < ActiveRecord::Migration[6.1]
  def change
    create_table :museums do |t|
      t.string :name
      t.datetime :create_at
      t.datetime :updated_at
    end
  end
end
