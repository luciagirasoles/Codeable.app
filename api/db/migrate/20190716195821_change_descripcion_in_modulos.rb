class ChangeDescripcionInModulos < ActiveRecord::Migration[5.2]
  def change
    rename_column :modulos, :descripcion, :description
  end
end
