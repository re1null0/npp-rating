class AddCreditsToDisciplines < ActiveRecord::Migration[5.2]
  def change
    add_column :disciplines, :credits, :integer
  end
end
