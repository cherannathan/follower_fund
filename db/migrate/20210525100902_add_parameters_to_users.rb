class AddParametersToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :pseudo, :string
    add_column :users, :role, :string
    add_column :users, :bio, :text
    add_column :users, :number_suscribers, :integer
    add_column :users, :youtube_link, :string
  end
end
