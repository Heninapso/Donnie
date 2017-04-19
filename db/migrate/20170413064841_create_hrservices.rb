class CreateHrservices < ActiveRecord::Migration[5.0]
  def change
    create_table :hrservices do |t|
      t.string :title
      t.text :description
      t.float :price
      t.boolean :bundle_option

      t.timestamps
    end
  end
end
