class RemoveMessageFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :message, :taxt
  end
end
