class AddTypeToInvests < ActiveRecord::Migration[5.2]
  def change
    add_column :invests, :type, :string
  end
end
