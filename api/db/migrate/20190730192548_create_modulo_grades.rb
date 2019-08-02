class CreateModuloGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :modulo_grades do |t|
      t.integer :week
      t.float :code_review
      t.float :performance
      t.float :testing
      t.float :dry_code
      t.text :feedback
      t.references :user, foreign_key: true
      t.references :modulo, foreign_key: true

      t.timestamps
    end
  end
end
