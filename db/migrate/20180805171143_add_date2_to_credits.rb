class AddDate2ToCredits < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :date2, :timestamp
  end
end
