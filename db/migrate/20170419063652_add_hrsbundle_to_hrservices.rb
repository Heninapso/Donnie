class AddHrsbundleToHrservices < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :hrsbundle, :boolean
  end
end
