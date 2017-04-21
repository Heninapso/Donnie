class AddMeetingAndLocationSlotsToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :meeting_date_slots, :text, array:true, default: []
    add_column :meetings, :meeting_location_slots, :text, array:true, default: []
  end
end
