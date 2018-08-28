class AddDisToPsostavs < ActiveRecord::Migration[5.2]
  def change
    add_column :psostavs, :dis, :string
  end
end
