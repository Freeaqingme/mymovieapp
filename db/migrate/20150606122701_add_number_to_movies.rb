class AddNumberToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :number, :integer,null:false,default:0
  end
end
