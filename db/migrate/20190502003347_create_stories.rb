class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.integer :author_id, null: false
      t.string :title, null: false 
      t.string :body, null: false 
      t.string :publish_date, null: false
      t.timestamps
    end
    add_index :stories, :author_id
    add_index :stories, :title
    add_index :stories, :body
  end
end
