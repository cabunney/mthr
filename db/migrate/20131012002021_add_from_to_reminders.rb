class AddFromToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :from, :string
  end
end
