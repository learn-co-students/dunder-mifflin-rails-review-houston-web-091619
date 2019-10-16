class DogsController < ApplicationController
    before_action :current_dog, only: [:show, :edit, :update, :destroy]
    def index 
        @dogs = Dog.all 
    end

    def show 
    end

    def new 
        @dog = Dog.new 
        @employees = Employee.all 
    end

    def create
        @dog = Dog.create(dogs_params)

        redirect_to dog_path(@dogs)
        dog.create.errors[:name].any?
        dog.new.errors[:name].any? # => false
    end
    def edit
      @employees = Employee.all
    end
    def update
      @dog.update(dogs_params)
      redirect_to @dog
    end
    def destroy
      @dog.destroy
      redirect_to dogs_path
    end
    private
    def current_dog
        # byebug
      @dog = Dog.find(params[:id])
    end
    def dogs_params
      params.require(:dog).permit(:name, Employee_ids: [])
    end
 end