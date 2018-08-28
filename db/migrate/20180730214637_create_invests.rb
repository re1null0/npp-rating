class CreateInvests < ActiveRecord::Migration[5.2]
  def change
    create_table :invests do |t|
      t.string :university
      t.integer :zayav1
      t.integer :year1
      
      t.timestamps
    end
  end
end
