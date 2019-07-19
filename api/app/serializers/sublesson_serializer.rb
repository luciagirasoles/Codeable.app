class SublessonSerializer < ActiveModel::Serializer
  attributes :id, :content, :title, :tag_id
end