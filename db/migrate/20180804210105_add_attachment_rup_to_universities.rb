class AddAttachmentRupToUniversities < ActiveRecord::Migration[5.2]
  def self.up
    change_table :universities do |t|
      t.attachment :rup
    end
  end

  def self.down
    remove_attachment :universities, :rup
  end
end
