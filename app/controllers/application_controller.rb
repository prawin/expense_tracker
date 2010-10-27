class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  def ajax_alert(message)
    render :update do |page|
      page << "alert('#{message}')"
    end
  end
end

