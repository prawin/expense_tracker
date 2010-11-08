class ExpensesController < ApplicationController
  def index
    expense_month = Date.today.month#params[:expense_month] || Date.today
    expense_year = Date.today.year
    @expense = Expense.new
    @expenses = current_user.expenses.all(:order => "expense_date DESC")
  end

  def create
    @expense = Expense.new(params[:expense].merge!({:user_id => current_user.id}))
    if @expense.save
      render :update do |page|
        page << "$('form#new_expense')[0].reset()"
      end
      #ajax_alert('Expense saved successfully')
    else
      ajax_alert('Problem saving expense !!!')
    end
  end
end

