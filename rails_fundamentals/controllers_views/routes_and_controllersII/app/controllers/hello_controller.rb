class HelloController < ApplicationController
  
  def index
    render plain: "What do you want me to say?"
  end
  
  def hello
    render plain: "Hello Coding Dojo!"
  end

  def say 
    render plain: "Saying Hello!"
  end

  def show
    if params[:name] == "michael"
      redirect_to "/say/hello/Joe"
    else
      render plain: "Saying Hello #{params[:name]}!" 
    end
  end

  def times 
    session[:count] ||= 0
    render plain: "You have visited this url #{session[:count]+=1} time(s)"
  end

  def destroy 
    reset_session
    render plain: "Destroyed the session."
  end
end
