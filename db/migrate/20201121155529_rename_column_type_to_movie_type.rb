class RenameColumnTypeToMovieType < ActiveRecord::Migration[5.2]
  def change
    rename_column :movies, :type, :movie_type
  end
end
