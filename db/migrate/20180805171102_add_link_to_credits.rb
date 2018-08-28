class AddLinkToCredits < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :link, :string
  end
end
