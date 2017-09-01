class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer 'movie_id'
      
      t.timestamps
    end
    add_index('comments', 'movie_id')
  end
end
