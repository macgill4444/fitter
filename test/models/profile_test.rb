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

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
