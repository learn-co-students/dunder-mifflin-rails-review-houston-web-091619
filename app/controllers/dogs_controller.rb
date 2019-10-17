class DogsController < ApplicationController
     def index
        @dogs = Dog.all
    end

    def show
     @dog = Dog.find(params[:id])
    end

    def new
        @dogs = Dog.all
    end
    
    def create
        # byebug
        @dogs = Dog.create(dogs_params)
        redirect_to @dogs
    end
end