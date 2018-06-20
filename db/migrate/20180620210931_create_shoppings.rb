class CreateShoppings < ActiveRecord::Migration[5.1]
  def change
    create_table :shoppings do |t|
      t.integer :pizza_id
      t.integer :user_id

      t.timestamps
    end
  end
end
