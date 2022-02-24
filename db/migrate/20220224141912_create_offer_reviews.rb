class CreateOfferReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_reviews do |t|
      t.text :description
      t.integer :stars
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
