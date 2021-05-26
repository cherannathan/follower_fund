class AddNametoProjects < ActiveRecord::Migration[6.0]
  def change
    def change
    add_column :projects, :name, :text
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
  end
end
