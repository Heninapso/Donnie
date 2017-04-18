class ChangeDataTypeForMeetingSlots < ActiveRecord::Migration[5.0]
  def change
    remove_colum :meeting, :meeting_slots
  end
end
