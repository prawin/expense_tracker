class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :expense_date, :presence => true
  validates :amount, :presence => true, :numericality => true
end

