class CreateStreaks < ActiveRecord::Migration
  def change
    create_table :streaks do |t|

      t.timestamps
    end
  end
end
