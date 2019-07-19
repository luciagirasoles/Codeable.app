class CreateModulos < ActiveRecord::Migration[5.2]
  def change
    create_table :modulos do |t|
      t.text :descripcion
      t.string :name

      t.timestamps
    end
  end
end
