class RemoveAttachmentDoc3FromInvests < ActiveRecord::Migration[5.2]
  def change
  	remove_attachment :invests, :doc3
  end
end
