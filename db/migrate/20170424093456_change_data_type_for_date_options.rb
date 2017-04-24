class ChangeDataTypeForDateOptions < ActiveRecord::Migration[5.0]
  def change
    change_column :meetings, :date_options, :string, array:true, default: []
  end
end
