class AddLengthToStreaks < ActiveRecord::Migration
  def change
  	    add_column :streaks, :length, :integer
  end
end
