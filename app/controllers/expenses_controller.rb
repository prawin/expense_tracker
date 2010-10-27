class ExpensesController < ApplicationController
  def index
    expense_month = Date.today.month#params[:expense_month] || Date.today
    expense_year = Date.today.year
    @expense = Expense.new
    @expenses = Expense.all
  end

  def create
    @expense = Expense.new(params[:expense])
    puts params.inspect
    if @expense.save
      ajax_alert('Expense saved successfully')
    else
      ajax_alert('Problem saving expense !!!')
    end
  end
end

