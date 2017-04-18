class AddColumnToMeeting < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :meeting_slots, :datetime
  end
end
