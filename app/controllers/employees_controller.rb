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
end
