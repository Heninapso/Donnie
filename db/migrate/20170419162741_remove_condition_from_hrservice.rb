class RemoveConditionFromHrservice < ActiveRecord::Migration[5.0]
  def change
    remove_column :hrservices, :conditions
  end
end
