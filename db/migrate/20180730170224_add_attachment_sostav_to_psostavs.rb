class AddAttachmentSostavToPsostavs < ActiveRecord::Migration[5.2]
  def self.up
    change_table :psostavs do |t|
      t.attachment :sostav
    end
  end

  def self.down
    remove_attachment :psostavs, :sostav
  end
end
