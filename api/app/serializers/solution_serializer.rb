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

class SolutionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :sublesson_id, :content, :status, :score
  
end
