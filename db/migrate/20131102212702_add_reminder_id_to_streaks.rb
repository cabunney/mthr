class AddReminderIdToStreaks < ActiveRecord::Migration
  def change
  	add_column :streaks, :reminder_id, :integer
  end
end
