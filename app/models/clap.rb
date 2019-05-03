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
    
end
