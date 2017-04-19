class AddLocationSlotsToMeeting < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :location_slots, :string
  end
end
