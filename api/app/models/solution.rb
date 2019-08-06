# == Schema Information
#
# Table name: solutions
#
#  id           :bigint           not null, primary key
#  content      :string
#  status       :string
#  user_id      :bigint
#  sublesson_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Solution < ApplicationRecord
  belongs_to :user
  belongs_to :sublesson

end
