class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :order_id
      t.string :source
      t.string :video
      t.text :description
      t.integer :score
      t.string :verification_status

      t.timestamps
    end
  end
end
