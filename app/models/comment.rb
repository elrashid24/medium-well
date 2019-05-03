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
    
end
