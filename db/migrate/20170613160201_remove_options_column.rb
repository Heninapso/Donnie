class RemoveOptionsColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :hrservices, :options
  end
end
