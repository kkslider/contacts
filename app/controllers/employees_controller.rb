class EmployeesController < ApplicationController
  before_filter :require_user_to_be_manager!, :only => [:new, :create]
  
  def create
    @employee = Employee.new(params[:employee])
    @employee.manager_id = current_user.id
    if @employee.save
      redirect_to employee_url(current_user)
    else
      flash.now[:error] = @employee.errors.full_messages
      render :new
    end
  end
  
  def show
    @employee = Employee.find(params[:id])
    render :show
  end
  
  def edit
    @employee = Employee.find(params[:id])
    render :edit
  end
  
  def update
    @employee = Employee.find(params[:id])
    
    if @employee.update_attributes(params[:employee])
      redirect_to employee_url(@employee)
    else
      flash.now[:error] = @employee.errors.full_messages
      render :edit
    end
  end
  
  private
  
  def require_user_to_be_manager!
    if !current_user.is_manager?
      redirect_to employee_url(current_user)
    end
  end
  
end
