class RemoveFieldProjectGenreIdFromGenre < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :project_genre_id, :bigint
  end
end
