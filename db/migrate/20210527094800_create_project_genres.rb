class CreateProjectGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :project_genres do |t|
      t.references :project, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
