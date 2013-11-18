class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :to
      t.string :text
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
