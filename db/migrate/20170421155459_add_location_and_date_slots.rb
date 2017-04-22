class AddLocationAndDateSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :date_options, :datetime, array:true, default: []
    add_column :meetings, :location_options, :datetime, array:true, default: []
  end
end
