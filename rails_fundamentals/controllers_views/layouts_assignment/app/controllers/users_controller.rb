class UsersController < ApplicationController
  layout "two_column"
  
  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      flash[:success] = "You have successfully added a user."
    else
      flash[:error] = @user.errors.full_messages
    end
    redirect_to "/users"  
  end

  private 
    def user_params
      params.require(:user).permit(:first_name, :last_name, :fav_lang)
    end
end
