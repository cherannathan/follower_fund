class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.integer :goal_amount
      t.integer :number_of_views
      t.float :revenue_split
      t.text :creator_thankyou
      t.integer :revenue_generated
      t.datetime :deadline

      t.timestamps
    end
  end
end
