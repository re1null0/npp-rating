class AddAttachmentCreditToCredits < ActiveRecord::Migration[5.2]
  def self.up
    change_table :credits do |t|
      t.attachment :credit
    end
  end

  def self.down
    remove_attachment :credits, :credit
  end
end
