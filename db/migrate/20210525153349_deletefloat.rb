class Deletefloat < ActiveRecord::Migration[6.0]
  def change
    remove_column :investments, :amount
  end
end
