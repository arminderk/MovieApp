class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 20
      t.string "email", :default => " ", :null => false
      t.boolean "hasPet", :default => false
      t.string "password", :limit => 20

      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
end
