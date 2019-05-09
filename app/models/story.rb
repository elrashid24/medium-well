# == Schema Information
#
# Table name: stories
#
#  id           :bigint           not null, primary key
#  author_id    :integer          not null
#  title        :string           not null
#  body         :string           not null
#  publish_date :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Story < ApplicationRecord
    belongs_to :user, 
    primary_key: :id, 
    foreign_key: :author_id, 
    class_name: :User
end
