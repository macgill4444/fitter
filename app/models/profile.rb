# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  bio        :text
#  interests  :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :posts
end
