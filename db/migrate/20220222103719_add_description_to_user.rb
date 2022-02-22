class AddDescriptionToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :interests, :string
    add_column :users, :picture_url, :string
    add_column :users, :location, :string
  end
end
