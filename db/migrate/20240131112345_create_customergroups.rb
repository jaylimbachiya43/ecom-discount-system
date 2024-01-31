class CreateCustomergroups < ActiveRecord::Migration[6.1]
  def change
    create_table :customergroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
