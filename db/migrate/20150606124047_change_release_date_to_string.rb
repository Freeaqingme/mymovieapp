class ChangeReleaseDateToString < ActiveRecord::Migration
  def up
    change_column :movies, :release, :string
  end

  def down
    change_column :movies, :release, :datetime
  end

end
