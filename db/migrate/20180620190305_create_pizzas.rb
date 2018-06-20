class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.integer :crust_id
      t.integer :repice_id

      t.timestamps
    end
  end
end
