class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :category
      t.string :subcategory
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :country
      t.string :website
      t.text :description
      t.string :image
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :linkedin
      t.string :tiktok
      t.string :timezone
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
