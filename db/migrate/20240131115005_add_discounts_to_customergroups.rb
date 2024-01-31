class AddDiscountsToCustomergroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :customergroups, :discounts, polymorphic: true, null: false
  end
end
