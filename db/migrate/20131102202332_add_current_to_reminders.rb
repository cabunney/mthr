class AddCurrentToReminders < ActiveRecord::Migration
  def change
  	add_column :reminders, :current, :binary
  end
end
