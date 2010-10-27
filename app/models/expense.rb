class Expense < ActiveRecord::Base
  validates :expense_date, :presence => true
  validates :amount, :presence => true, :numericality => true
end

