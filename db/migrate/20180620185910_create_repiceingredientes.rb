class CreateRepiceingredientes < ActiveRecord::Migration[5.1]
  def change
    create_table :repiceingredientes do |t|
      t.integer :ingredient_id
      t.integer :repice_id
      t.timestamps
    end
  end
end
