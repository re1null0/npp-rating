class AddSpecialityToUniversities < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :speciality, :string
  end
end
