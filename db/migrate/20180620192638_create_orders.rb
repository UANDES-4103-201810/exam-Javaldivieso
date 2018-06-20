class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :delivery_info_id
      t.string :methodpay
      t.integer :pizzaorder_id

      t.timestamps
    end
  end
end
