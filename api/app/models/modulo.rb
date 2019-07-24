# == Schema Information
#
# Table name: modulos
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Modulo < ApplicationRecord
  # Model associations
  has_many :lessons

  # Validations
  validates_presence_of :name, :description
end
