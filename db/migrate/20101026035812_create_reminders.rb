class CreateReminders < ActiveRecord::Migration
  def self.up
    create_table :reminders do |t|
      t.integer :user_id
      t.string  :subject
      t.text    :email_content
      t.string  :text_message_content
      t.timestamps
    end
  end

  def self.down
    drop_table :reminders
  end
end

