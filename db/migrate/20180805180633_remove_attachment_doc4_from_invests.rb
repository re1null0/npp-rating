class RemoveAttachmentDoc4FromInvests < ActiveRecord::Migration[5.2]
  def change
  	remove_attachment :invests, :doc4
  end
end
