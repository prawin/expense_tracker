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
      respond_to do |format|
        format.js
      end
#      update_page do |page|
#        page << "$('form#new_expense')[0].reset()"
#        page.insert_html :top, "expenses", render(:partial => "expenses/expense.html.haml", :locals => {:expense => @expense})
#      end
      #ajax_alert('Expense saved successfully')
    else
      ajax_alert('Problem saving expense !!!')
    end
  end
end

