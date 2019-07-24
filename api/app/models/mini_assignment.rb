# == Schema Information
#
# Table name: mini_assignments
#
#  id         :bigint           not null, primary key
#  title      :string
#  content    :text
#  lesson_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MiniAssignment < ApplicationRecord
  belongs_to :lesson
end
