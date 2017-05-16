class AddPriceToHrservices < ActiveRecord::Migration[5.0]
  def change
    add_monetize :hrservices, :price, currency: { present: false }
  end
end
