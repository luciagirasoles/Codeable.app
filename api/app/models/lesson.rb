# == Schema Information
#
# Table name: lessons
#
#  id         :bigint           not null, primary key
#  title      :string
#  modulo_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lesson < ApplicationRecord
  # Model associations
  belongs_to :modulo
  has_many :sublessons

  # Validations
  validates_presence_of :title, :modulo_id
end
