class AddHrsunitToHrservices < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :hrsunit, :boolean
  end
end
