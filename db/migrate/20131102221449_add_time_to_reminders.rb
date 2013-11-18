class AddTimeToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :time, :timestamp
  end
end
