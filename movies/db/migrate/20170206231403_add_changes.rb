class AddChanges < ActiveRecord::Migration
  def change
      add_column :actors,:year,:integer
	  rename_column :actors,:noofmovies,:moviesno
	  remove_timestamps :films
  end
end
