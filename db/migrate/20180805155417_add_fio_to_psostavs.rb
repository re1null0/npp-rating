class AddFioToPsostavs < ActiveRecord::Migration[5.2]
  def change
    add_column :psostavs, :fio, :string
  end
end
