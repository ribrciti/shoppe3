class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :short_description
      t.boolean :active
      t.decimal :price
      t.decimal :cost_price
      t.boolean :featured
      t.string :color
      t.string :image_id
      t.string :category_name
      t.string :wieght
      t.string :decimal

      t.timestamps null: false
    end
  end
end
