class ChangeOptionDescriptionField < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :option_description
    add_column :orders, :option_description, :text, array:true
  end
end
