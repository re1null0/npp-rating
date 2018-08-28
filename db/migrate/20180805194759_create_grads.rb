class CreateGrads < ActiveRecord::Migration[5.2]
  def change
    create_table :grads do |t|
      t.string :fio
      t.string :iin
      t.timestamp :dob
      t.string :otd
      t.string :forma
      t.string :gender
      t.string :mob

      t.timestamps
    end
  end
end
