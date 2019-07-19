class CreateMiniAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :mini_assignments do |t|
      t.string :title
      t.text :content
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
