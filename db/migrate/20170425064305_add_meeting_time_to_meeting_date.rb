class AddMeetingTimeToMeetingDate < ActiveRecord::Migration[5.0]
  def change
    change_column :meetings, :meeting_date, :datetime
  end
end
