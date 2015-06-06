class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.datetime :release
      t.string :director
      t.text :synopsis
      t.string :imdbid
      t.integer :number
      t.timestamps null: false
    end
  end
end
