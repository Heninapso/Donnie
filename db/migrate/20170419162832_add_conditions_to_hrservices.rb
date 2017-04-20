class AddConditionsToHrservices < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :conditions, :text, array:true, default: []
  end
end
