class AddAttachmentSoglasToSoglas < ActiveRecord::Migration[5.2]
  def self.up
    change_table :soglas do |t|
      t.attachment :soglas
    end
  end

  def self.down
    remove_attachment :soglas, :soglas
  end
end
