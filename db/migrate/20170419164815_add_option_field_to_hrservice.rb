class AddOptionFieldToHrservice < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :options, :text
  end
end
