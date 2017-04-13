class AddColumnToHrservice < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :conditions, :string
  end
end
