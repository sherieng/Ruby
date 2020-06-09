class SurveysController < ApplicationController
  
  def index
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
      redirect_to '/result'
    else 
      flash[:error] = @user.errors.full_messages
      redirect_to "/"
    end 

  end

  def show
    puts(@user, "*****************************")
    @user = User.find(session[:user])
    flash[:success] ="Thanks for submitting this form! You have submited this form #{session[:count]} time(s)." 
  end

  private 
    def user_params
      params.require(:user).permit(:name, :location, :language, :comment)
    end
end
