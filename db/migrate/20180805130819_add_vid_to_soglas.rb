class AddVidToSoglas < ActiveRecord::Migration[5.2]
  def change
    add_column :soglas, :vid, :string
  end
end
