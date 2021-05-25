class AddPriceToInvestments < ActiveRecord::Migration[6.0]
  def change
    add_monetize :investments, :price, currency: { present: true }
  end
end
