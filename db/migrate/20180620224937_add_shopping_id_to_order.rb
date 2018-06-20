class AddShoppingIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :shopping_id, :interger
  end
end
