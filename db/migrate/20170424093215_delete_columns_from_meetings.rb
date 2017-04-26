class DeleteColumnsFromMeetings < ActiveRecord::Migration[5.0]
  def change
    remove_column :meetings, :meeting_location_slots
    remove_column :meetings, :meeting_date_slots
  end
end
