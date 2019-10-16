class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all 
    end

    def show 
        @employee = Employee.find(params[:id])
    end
    def new 
        @employee = Employee.new 
        @dogs = Dog.all 
    end

    def create
        @employee = Employee.create(employee_params)

        # redirect_to Employee_path(@employees)
        # Employee.create.errors[:name].any?
        # Employee.new.errors[:name].any? # => false
    end
    def edit
      @dogs = Dog.all
    end
    def update
      @employee.update(employees_params)
      redirect_to @employee
    end
    def destroy
      @employee.destroy
      redirect_to employees_path
    end
    private
    def current_employee
        # byebug
      @employee = Employee.find(params[:id])
    end
    def employees_params
      params.require(:employee).permit(:first_name, dog_ids: [])
    end
 end