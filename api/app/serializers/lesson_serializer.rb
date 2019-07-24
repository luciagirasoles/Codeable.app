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

class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :sublessons
end
