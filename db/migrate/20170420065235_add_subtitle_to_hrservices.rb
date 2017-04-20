class AddSubtitleToHrservices < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :subtitle, :text
  end
end
