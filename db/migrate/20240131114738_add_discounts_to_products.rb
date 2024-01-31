class AddDiscountsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :discounts, polymorphic: true, null: false
  end
end
