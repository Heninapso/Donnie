class DeleteOldPriceFromHrservices < ActiveRecord::Migration[5.0]
  def change
    remove_column :hrservices, :price
  end
end
