class AddNameAndPolymorphicReferenceToDiscounts < ActiveRecord::Migration[6.1]
  def change
    add_column :discounts, :name, :string
    add_reference :discounts, :discountable, polymorphic: true, null: false
  end
end
