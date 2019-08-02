class AddTipoToModuloGrades < ActiveRecord::Migration[5.2]
  def change
    add_column :modulo_grades, :tipo, :string
  end
end
