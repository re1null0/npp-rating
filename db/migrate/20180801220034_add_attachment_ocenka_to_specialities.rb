class AddAttachmentOcenkaToSpecialities < ActiveRecord::Migration[5.2]
  def self.up
    change_table :specialities do |t|
      t.attachment :ocenka
    end
  end

  def self.down
    remove_attachment :specialities, :ocenka
  end
end
