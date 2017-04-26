class RemoveDefaultEmptyArrays < ActiveRecord::Migration[5.0]
  def change
    change_column :meetings, :date_options, :string, array:true
    change_column :meetings, :location_options, :text, array:true
  end
end
