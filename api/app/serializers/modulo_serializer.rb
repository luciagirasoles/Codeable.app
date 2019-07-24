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

class ModuloSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :lessons
end
