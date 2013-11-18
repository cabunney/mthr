class AddStreakIdToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :streak_id, :integer
  end
end
