class AddDateToSoglas < ActiveRecord::Migration[5.2]
  def change
    add_column :soglas, :date, :timestamp
  end
end
