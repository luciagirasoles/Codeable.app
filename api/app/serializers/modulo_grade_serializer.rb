# app/serializers/modulo_grade_serializer.rb
class ModuloGradeSerializer < ActiveModel::Serializer
  attributes :id, :week, :code_review, :performance, :testing, :dry_code, :feedback, :tipo, :modulo

  def modulo
    object.modulo.name
  end
end
