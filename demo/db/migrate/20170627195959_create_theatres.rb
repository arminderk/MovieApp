class CreateTheatres < ActiveRecord::Migration[5.1]
  def change
    create_table :theatres do |t|
      t.string "name"
      t.monetize "price"
      t.timestamps
    end
  end
end
