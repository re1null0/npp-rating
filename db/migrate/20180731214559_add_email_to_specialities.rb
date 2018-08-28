class AddEmailToSpecialities < ActiveRecord::Migration[5.2]
  def change
    add_column :specialities, :email, :string
  end
end
