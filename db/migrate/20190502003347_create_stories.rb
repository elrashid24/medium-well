class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.integer :author_id, null: false, allow_blank: false
      t.string :title, null: false, allow_blank: false 
      t.string :body, null: false, allow_blank: false 
      t.string :publish_date, null: false, allow_blank: false
      t.timestamps
    end
    add_index :stories, :author_id
    add_index :stories, :title
    add_index :stories, :body
  end
end
