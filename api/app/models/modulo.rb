class Modulo < ApplicationRecord
  # Model associations
  has_many :lessons

  # Validations
  validates_presence_of :name, :description
end
