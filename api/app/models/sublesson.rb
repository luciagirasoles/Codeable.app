# == Schema Information
#
# Table name: sublessons
#
#  id         :bigint           not null, primary key
#  title      :string
#  content    :text
#  section    :string
#  lesson_id  :bigint
#  tag_id     :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sublesson < ApplicationRecord
  belongs_to :lesson
  belongs_to :tag

  has_many :solutions
  has_many :users, through: :solutions

  def isMiniassigment?
    self.tag_id == Tag.where(name: 'M-ASSIGN').first.id
  end

end
