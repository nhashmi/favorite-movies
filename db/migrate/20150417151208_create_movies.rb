class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    	t.text :title
    	t.integer :year
    	t.text :poster_url
      t.timestamps null: false

    end
  end
end
