class EmployeesController < ApplicationController
    before_action :current_employee, only: [:show, :edit, :update, :destroy]

    def index
        @employees = Employee.all
    end
    
    def new
        @employee = Employee.new
        @dogs = Dog.all
    end
    
    def create
        @employee = Employee.new(employees_params)

        if @employee.valid?
            @employee.save
            redirect_to @employee
        else
            flash[:error] = @employee.errors.full_messages
            redirect_to new_employee_path
        end
    end
    
    def edit
        @dogs = Dog.all
    end
    
    def update
       @employee.update(employees_params)
       redirect_to @employee
    end
    
    def show
    end
    
    def destroy
    
    end

    private

    def current_employee
        @employee = Employee.find(params[:id])
    end

    def employees_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end
end
