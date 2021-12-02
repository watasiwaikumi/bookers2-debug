class RemoveUserIdFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :user_id, :string
  end
end
