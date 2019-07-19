class CreateSublessons < ActiveRecord::Migration[5.2]
  def change
    create_table :sublessons do |t|
      t.string :title
      t.text :content
      t.string :section
      t.references :lesson, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end