class ChangeAuthorIdType < ActiveRecord::Migration[5.2]
  def change
    change_column :stories, 
                  :author_id, 
                  'integer USING CAST(author_id AS integer)'
  end
end
