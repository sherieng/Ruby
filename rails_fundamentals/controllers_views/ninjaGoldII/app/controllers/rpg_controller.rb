class RpgController < ApplicationController

    def index
        if !session[:player_gold]
            session[:player_gold] = 0
        end 
        if !session[:message] 
            session[:message] = []
        end
    end

    def process_money
        if params[:building] == "farm"
            randnum = rand(10..20)
            session[:player_gold] += randnum
            message = "Earned #{randnum} golds from the farm!"
            session[:message].unshift(message)
        elsif params[:building] == "cave"
            randnum = rand(5..10)
            session[:player_gold] += randnum
            message = "Earned #{randnum} golds from the cave!"
            session[:message].unshift(message)
        elsif params[:building] == "house"
            randnum = rand(2..5)
            session[:player_gold] += randnum
            message = "Earned #{randnum} golds from the house!"
            session[:message].unshift(message)
        elsif params[:building] == "casino"
            randnum = rand(-50..50)
            session[:player_gold] += randnum
            if randnum > 0
                message ="Earned #{randnum} golds from the casino!"
            else
                message = "Lost #{randnum} golds from the casino!"                
            end
            session[:message].unshift(message)
        end
        redirect_to "/"
    end

    def reset
        session.clear
        redirect_to "/"
    end

end
