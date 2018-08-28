class RemoveAttachmentDoc5FromInvests < ActiveRecord::Migration[5.2]
  def change
  	remove_attachment :invests, :doc5
  end
end
