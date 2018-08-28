class RemoveAttachmentDoc2FromInvests < ActiveRecord::Migration[5.2]
  def change
  	remove_attachment :invests, :doc2 
  end
end
