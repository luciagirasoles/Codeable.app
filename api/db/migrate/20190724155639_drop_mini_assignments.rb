class DropMiniAssignments < ActiveRecord::Migration[5.2]
  def up
    drop_table :mini_assignments
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
