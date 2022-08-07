class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :notifiable_id
      t.string :content
      t.integer :type
      t.boolean :read
      t.integer :messagedownvote

      t.timestamps null: false
    end
  end
end
