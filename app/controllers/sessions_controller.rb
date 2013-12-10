class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = Employee.find_by_email(
      params[:employee][:email],
    )
    
    if user
      login_user!(user)
      redirect_to employee_url(user)
    else
      flash.now[:error] = "Invalid email/password combination"
      render :new
    end
  end
  
  def destroy
    logout_current_user!
    redirect_to root_url
  end
end
