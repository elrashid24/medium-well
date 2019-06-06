class AddImgUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :img_url, :string
  end
end
