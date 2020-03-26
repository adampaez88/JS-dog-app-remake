class DogsController < ApplicationController
    before_action :authenticate, only: [:create]
    def index
        dogs = Dog.all
        render json: {dogs: dogs}
    end

    def create
        dog = Dog.create(
            breed: params[:breed],
            info: params[:info],
            image_url: params[:image_url],
            description: params[:description],
            user: @user
        )
        render json: {dog: dog}
    end

end
