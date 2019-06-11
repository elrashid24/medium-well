# == Schema Information
#
# Table name: comments
#
#  id           :bigint           not null, primary key
#  author_id    :integer          not null
#  story_id     :integer          not null
#  body         :string           not null
#  publish_date :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ApplicationRecord
    validates :story_id, :author_id, :publish_date, :body, presence:true

    belongs_to :Story,
    primary_key: :id,
    foreign_key: :story_id,
    class_name: :Story
    
    belongs_to :User, 
    primary_key: :id, 
    foreign_key: :author_id,
    class_name: :User

end
