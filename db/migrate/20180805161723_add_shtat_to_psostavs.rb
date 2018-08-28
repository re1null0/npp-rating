class AddShtatToPsostavs < ActiveRecord::Migration[5.2]
  def change
    add_column :psostavs, :shtat, :string
  end
end
