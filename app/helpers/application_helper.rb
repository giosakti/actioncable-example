module ApplicationHelper
  def current_user
    session[:username]
  end
end
