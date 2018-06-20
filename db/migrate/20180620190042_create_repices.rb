class CreateRepices < ActiveRecord::Migration[5.1]
  def change
    create_table :repices do |t|
      t.integer :price

      t.timestamps
    end
  end
end
