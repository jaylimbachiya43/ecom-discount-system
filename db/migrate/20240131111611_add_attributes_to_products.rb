class AddAttributesToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :name, :string
    add_column :products, :description, :string
    add_column :products, :price, :decimal
    add_reference :products, :category, null: false, foreign_key: true
  end
end
