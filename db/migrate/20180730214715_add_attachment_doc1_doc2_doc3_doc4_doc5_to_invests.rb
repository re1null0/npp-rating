class AddAttachmentDoc1Doc2Doc3Doc4Doc5ToInvests < ActiveRecord::Migration[5.2]
  def self.up
    change_table :invests do |t|
      t.attachment :doc1
      t.attachment :doc2
      t.attachment :doc3
      t.attachment :doc4
      t.attachment :doc5
    end
  end

  def self.down
    remove_attachment :invests, :doc1
    remove_attachment :invests, :doc2
    remove_attachment :invests, :doc3
    remove_attachment :invests, :doc4
    remove_attachment :invests, :doc5
  end
end
