class DogsController < ApplicationController
    before_action :current_dog, only: [:show, :edit, :update, :destroy]

    def index
        @dogs = Dog.all 
    end
    
    def new
    
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    end
    
    def destroy
    
    end

    private

    def current_dog
        @dog = Dog.find(params[:id])
    end
end
