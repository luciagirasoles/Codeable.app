class ModuloSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :lessons
end