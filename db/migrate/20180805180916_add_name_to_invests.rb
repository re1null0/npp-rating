class AddNameToInvests < ActiveRecord::Migration[5.2]
  def change
    add_column :invests, :name, :string
  end
end
