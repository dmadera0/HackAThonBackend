class BrewhousesController < ApplicationController
    def index 
        @brewhouses = Brewhouse.all
        render json: @brewhouses
    end 
    def show 
        @brewhouse = Brewhouse.find(params[:id])
        render json: @brewhouse 
    end
end
