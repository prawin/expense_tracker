class Expense < ActiveRecord::Base
  has_event_calendar

  belongs_to :user
  belongs_to :category
  validates :expense_date, :presence => true
  validates :amount, :presence => true, :numericality => true

  def name
    description
  end
end

