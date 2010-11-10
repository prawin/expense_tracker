class AddColumnsStartAtEndAtToExpenses < ActiveRecord::Migration
  def self.up
    add_column :expenses, :start_at, :datetime
    add_column :expenses, :end_at, :datetime
  end

  def self.down
    remove_column :expenses, :start_at
    remove_column :expenses, :end_at
  end
end

