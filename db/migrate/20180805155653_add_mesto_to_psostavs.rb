class AddMestoToPsostavs < ActiveRecord::Migration[5.2]
  def change
    add_column :psostavs, :mesto, :string
  end
end
