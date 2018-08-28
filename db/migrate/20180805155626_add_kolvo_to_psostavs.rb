class AddKolvoToPsostavs < ActiveRecord::Migration[5.2]
  def change
    add_column :psostavs, :kolvo, :string
  end
end
