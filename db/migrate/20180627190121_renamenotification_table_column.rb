class RenamenotificationTableColumn < ActiveRecord::Migration
  def change
      rename_column :notifications, :messagedownvote, :message_id
  end
end
