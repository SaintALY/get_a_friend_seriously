class AddLastnameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lastname, :string
    rename_column :users, :name, :firstname
  end
end
