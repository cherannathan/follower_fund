class AddAmountToInvestments < ActiveRecord::Migration[6.0]
  def change
    add_column :investments, :amount, :string
  end
end
