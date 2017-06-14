class AddNewOptionsField < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :options, :text, array:true
  end
end
