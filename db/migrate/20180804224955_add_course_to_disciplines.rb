class AddCourseToDisciplines < ActiveRecord::Migration[5.2]
  def change
    add_column :disciplines, :course, :integer
  end
end
