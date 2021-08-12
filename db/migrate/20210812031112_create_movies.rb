class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster_url
      t.string :overview
      t.float :rating

      t.timestamps
    end
  end
end
