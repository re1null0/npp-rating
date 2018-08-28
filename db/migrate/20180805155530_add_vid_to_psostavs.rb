class AddVidToPsostavs < ActiveRecord::Migration[5.2]
  def change
    add_column :psostavs, :vid, :string
  end
end
