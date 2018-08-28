class AddOpitToPsostavs < ActiveRecord::Migration[5.2]
  def change
    add_column :psostavs, :opit, :string
  end
end
