class AddNameToSoglas < ActiveRecord::Migration[5.2]
  def change
    add_column :soglas, :name, :string
  end
end
