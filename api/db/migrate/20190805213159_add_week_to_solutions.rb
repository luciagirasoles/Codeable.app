class AddWeekToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :week, :integer
  end
end
