class CreateInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.float :amount
      t.string :status
      t.text :user_thankyou

      t.timestamps
    end
  end
end
