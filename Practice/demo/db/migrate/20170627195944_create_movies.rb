class CreateMovies < ActiveRecord::Migration[5.1]
  def up
    create_table :movies do |t|
      t.string "name"
      t.string "rated"
      t.string "description", :limit => 45

      t.timestamps
    end
  end
  
  def down
    drop_table :movies
  end
end
