class DeleteMeetingslotsFromMeetingTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :meetings, :meeting_slots
    remove_column :meetings, :location_slots
  end
end
