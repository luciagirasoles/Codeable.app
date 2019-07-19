class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :sublessons
end
