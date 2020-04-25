class RpgController < ApplicationController
  def index
    if !session[:gold]
      session[:gold] = 0
    end
    if !session[:message]
      session[:message] = []
    end
  end

  def process_money
      puts "in process"
      if params[:building] == "farm"
        randnum = rand(10..20)
        session[:gold] += randnum
        message = "Earned #{randnum} golds from the farm!"
        session[:message].unshift(message)
      elsif params[:building] == "cave"
        randnum = rand(5..10)
        session[:gold] += randnum 
        message = "Earned #{randnum} golds from the cave!"
        session[:message].unshift(message)
      elsif params[:building] == "house"
        randnum = rand(2..5)
        session[:gold] += randnum
        message = "Earned #{randnum} golds from the house!"
        session[:message].unshift(message)
      elsif params[:building] = "casino"
        randnum = rand(-50..50)
        session[:gold] += randnum
        if randnum > 0
          message = "Earned #{randnum} golds from the casino!"
          session[:message].unshift(message)
        else 
          message = "Lost #{randnum} golds from the casino!"
          session[:message].unshift(message)
        end
      end
      redirect_to '/'
  end

  def reset 
    reset_session
    redirect_to '/'
  end 
end
