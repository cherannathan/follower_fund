class AddSkuToInvestment < ActiveRecord::Migration[6.0]
  def change
      add_column :investments, :sku, :string

  end
end
