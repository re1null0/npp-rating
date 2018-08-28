class AddMestoToCredits < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :mesto, :string
  end
end
