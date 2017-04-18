class RenameFieldInMeeting < ActiveRecord::Migration[5.0]
  def change
    rename_column :meetings, :date, :meeting_date
  end
end
