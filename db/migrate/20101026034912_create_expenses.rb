class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :category_id
      t.string  :description
      t.date    :expense_date
      t.float   :amount
      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end

