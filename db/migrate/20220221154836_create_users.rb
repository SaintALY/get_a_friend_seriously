class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :password
      t.string :interests
      t.string :picture_url
      t.string :location

      t.timestamps
    end
  end
end
