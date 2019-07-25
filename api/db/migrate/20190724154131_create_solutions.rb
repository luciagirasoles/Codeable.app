class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.string :content
      t.string :status
      t.references :user, foreign_key: true
      t.references :sublesson, foreign_key: true

      t.timestamps
    end
  end
end
