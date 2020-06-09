class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.integer :release_year
      t.integer :rating
      t.boolean :released
    end

  end
end
