class AddNameToCredits < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :name, :string
  end
end
