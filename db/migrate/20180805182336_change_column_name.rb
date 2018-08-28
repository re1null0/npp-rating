class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	    rename_column :invests, :type, :typec
  end
end
