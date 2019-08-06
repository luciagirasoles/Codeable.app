class AddDayToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :day, :string
  end
end
