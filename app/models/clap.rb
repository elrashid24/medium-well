# == Schema Information
#
# Table name: claps
#
#  id         :bigint           not null, primary key
#  clapper_id :integer          not null
#  story_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Clap < ApplicationRecord
    validates :user_id, :story_id, presence: true

    belongs_to :user, 
    primary_key: :id, 
    foreign_key: :clapper_id, 
    class_name: :User

    belongs_to :story, 
    primary_key: :id, 
    foreign_key: :story_id, 
    class_name: :Story 
end
