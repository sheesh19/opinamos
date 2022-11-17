class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :company, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :link
      t.string :image_link
      t.string :additional_image_link
      t.string :mobile_link
      t.string :availability
      t.date :availability_date
      t.float :cost_of_goods_sold
      t.date :expiration_date
      t.float :price
      t.float :sale_price
      t.string :currency
      t.date :sale_price_effective_date
      t.string :unit_pricing_measure
      t.string :unit_pricing_base_measure
      t.string :installment
      t.string :subscription_cost
      t.string :google_product_category
      t.string :product_type
      t.string :brand
      t.integer :gtin
      t.string :sku
      t.string :mpn
      t.string :identifier_exists
      t.string :Condition
      t.string :adult
      t.string :multipack
      t.string :is_bundle
      t.string :energy_efficiency_class
      t.string :min_energy_efficiency_class
      t.string :max_energy_efficiency_class
      t.string :age_group
      t.string :color
      t.string :gender
      t.string :material
      t.string :pattern
      t.string :size
      t.string :size_type
      t.string :size_system
      t.string :item_group_id
      t.string :product_lenght
      t.string :product_widht
      t.string :product_height
      t.string :product_weight
      t.string :product_detail
      t.string :product_highlight

      t.timestamps
    end
  end
end
