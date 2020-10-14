class FavoritesController < ApplicationController
    
    def index
        @favorites = Favorite.all
        render json: @favorites
    end
    
    
    def create 
        @favorite = Favorite.create({
            user_id: params[:user_id], 
            brewhouse_id: params[:brewhouse_id]
            })
        render json: @favorite
    end
end