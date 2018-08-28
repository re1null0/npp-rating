class CreatePsostavs < ActiveRecord::Migration[5.2]
  def change
    create_table :psostavs do |t|
      t.string :university

      t.timestamps
    end
  end
end
