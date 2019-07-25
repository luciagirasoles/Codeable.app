class Solution < ApplicationRecord
  belongs_to :user
  belongs_to :sublesson
  has_many :users
end
