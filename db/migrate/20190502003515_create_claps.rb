class CreateClaps < ActiveRecord::Migration[5.2]
  def change
    create_table :claps do |t|
      t.integer :clapper_id, null: false
      t.integer :story_id, null: false
      t.timestamps
    end
      add_index :claps, :clapper_id
      add_index :claps, :story_id
  end
end
