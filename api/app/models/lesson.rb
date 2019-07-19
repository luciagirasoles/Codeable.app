class Lesson < ApplicationRecord
  # Model associations
  belongs_to :modulo
  has_many :sublessons

  # Validations
  validates_presence_of :title, :modulo_id
end
