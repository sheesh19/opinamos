class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.references :company, null: false, foreign_key: true
      t.string :status
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :order_id

      t.timestamps
    end
  end
end
