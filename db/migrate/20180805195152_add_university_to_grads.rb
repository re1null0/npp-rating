class AddUniversityToGrads < ActiveRecord::Migration[5.2]
  def change
    add_column :grads, :university, :string
  end
end
