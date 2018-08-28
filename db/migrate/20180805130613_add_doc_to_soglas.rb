class AddDocToSoglas < ActiveRecord::Migration[5.2]
  def change
    add_column :soglas, :doc, :string
  end
end
