class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.string :type

      t.timestamps
    end
  end
end
