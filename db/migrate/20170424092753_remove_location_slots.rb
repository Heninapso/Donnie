class RemoveLocationSlots < ActiveRecord::Migration[5.0]
  def change
    remove_column :meetings, :location_options
  end
end
