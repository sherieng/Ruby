class UsersController < ApplicationController
  def main
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save 
      session[:user] = @user.id
      if session[:count]
        session[:count] += 1
      else
        session[:count] = 1
      end
      flash[:success] ="Thanks for submitting this form! You have submited this form #{session[:count]} time(s)." 
      redirect_to '/result'
    else  
      puts "in valid if statement"
      flash[:error] = "You have errors on this page."
      redirect_to '/' 
    end
    
  end

  def show
    @person = User.find(session[:user])
  end

  private 
    def user_params
      params.require(:user).permit(:name, :dojo, :lang, :comment)
    end
end
