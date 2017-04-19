class AddMeetingLocationToMeeting < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :meeting_location, :string
  end
end
