class AddDiscountsToCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :discounts, polymorphic: true, null: false
  end
end
