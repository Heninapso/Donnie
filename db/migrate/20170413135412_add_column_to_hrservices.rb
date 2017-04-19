class AddColumnToHrservices < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :ondemand_service, :boolean
  end
end
