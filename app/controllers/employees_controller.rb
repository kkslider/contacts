class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      login_user!(@employee)
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
end
