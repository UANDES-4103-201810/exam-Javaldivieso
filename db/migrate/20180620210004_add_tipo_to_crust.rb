class AddTipoToCrust < ActiveRecord::Migration[5.1]
  def change
    add_column :crusts, :tipo, :string
  end
end
