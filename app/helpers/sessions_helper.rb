module SessionsHelper
  def current_user
    @current_user ||= Employee.find_by_session_token(session[:session_token])
  end
  
  def logout_current_user!
    current_user.reset_session_token!
    session[:session_token] = nil
  end
  
  def login_user!(user)
    @current_user = user
    session[:session_token] = user.session_token
  end
  
  def require_current_user!
    redirect_to new_session_url if current_user.nil?
  end
end

