class AddTimestuffsToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :hour, :integer
    add_column :reminders, :minute, :integer
    add_column :reminders, :period, :string
  end
end
