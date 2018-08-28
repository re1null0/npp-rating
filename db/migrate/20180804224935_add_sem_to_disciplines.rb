class AddSemToDisciplines < ActiveRecord::Migration[5.2]
  def change
    add_column :disciplines, :sem, :integer
  end
end
