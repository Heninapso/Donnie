class AddNewLocationOptionColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :location_options, :text, array:true, default: []
  end
end
