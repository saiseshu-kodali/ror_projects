class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
	  t.string :title
	  t.text :rating
	  t.datetime :releasedate

      t.timestamps null: false
    end
  end
end
