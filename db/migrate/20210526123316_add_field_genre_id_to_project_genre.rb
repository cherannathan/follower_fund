class AddFieldGenreIdToProjectGenre < ActiveRecord::Migration[6.0]
  def change
    add_column :project_genres, :genre_id, :bigint
  end
end
