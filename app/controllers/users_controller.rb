class UsersController < ApplicationController
    
    def new 
        @user = User.new
    end 

    def show
        @user = User.find(params[:id])
        @quote = User.quote_of_day
    end

    def create 
        @user =  User.create(user_params)
        redirect_to user_path(@user)

    end 

    def favorites
        @user = User.find(params[:id])
        @quotes = @user.quotes
    end 

    # def remove_favorite
    #     @user = User.find(params[:id]
    #     @quote = Quote.find(params[:quote_id])
    #     @user.remove_quote(@quote)

    #     redirect_to favorite_quotes_path
    # end



    private
    def user_params
        params.require(:user).permit(:name , :password)

    end 








end
