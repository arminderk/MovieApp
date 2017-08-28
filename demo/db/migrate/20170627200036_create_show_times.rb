class CreateShowTimes < ActiveRecord::Migration[5.1]
  def up
    create_table :show_times do |t|
      t.integer "movie_id"
      t.integer "theatre_id"
      t.datetime 'datetime'
      
      t.timestamps
    end
    add_index :show_times, ["movie_id", "theatre_id"]
  end
  
  def down
    drop_table :show_times
  end
end
