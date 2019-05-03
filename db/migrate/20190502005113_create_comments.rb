class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :author_id, null: false 
      t.integer :story_id, null: false 
      t.string :body, null: false
      t.string :publish_date, null: false 
      t.timestamps 
    end
    add_index :comments, :author_id
    add_index :comments, :story_id
  end
end
