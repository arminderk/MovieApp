class CreateCars < ActiveRecord::Migration[5.1]
  def up
    create_table :cars do |t|
      t.integer "user_id" #Foreign Key
      
      t.string "make", :limit => 20
      t.string "model", :limit => 25
      t.integer "year", :limit => 4

      t.timestamps
    end
  end
  
  def down 
    drop_table :cars
  end
end
