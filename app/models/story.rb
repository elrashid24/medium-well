# == Schema Information
#
# Table name: stories
#
#  id           :bigint           not null, primary key
#  author_id    :integer          not null
#  title        :string           not null
#  body         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  img_url      :string
#  publish_date :string
#

class Story < ApplicationRecord
    validates :author_id, :title, :body, :publish_date, presence: true
    
    belongs_to :user, 
    primary_key: :id, 
    foreign_key: :author_id, 
    class_name: :User

    has_many :comments, 
    primary_key: :id, 
    foreign_key: :story_id,
    class_name: :Comment
    
    has_many :claps, 
    primary_key: :id, 
    foreign_key: :story_id,
    class_name: :Clap
    
    has_one_attached :photo
end
