class AddDate1ToCredits < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :date1, :timestamp
  end
end
