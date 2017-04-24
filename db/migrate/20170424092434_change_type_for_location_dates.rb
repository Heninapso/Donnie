class ChangeTypeForLocationDates < ActiveRecord::Migration[5.0]
  def change
    change_column :meetings, :location_options, :string, as: :array
  end
end
