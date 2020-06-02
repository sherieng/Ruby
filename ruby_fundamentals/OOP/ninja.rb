require_relative 'Human'
class Ninja < Human  
    
    def initialize
        super 
        @stealth = 175
    end

    def attack(obj)
        super
    end

    def steal(obj) 
        if obj.class.ancestors.include?(Human)
            attack(obj)
            @health += 10
            puts "The ninja's health is #{@health}. The opponent's health is now #{obj.health}."
            true
        else
            false
        end
        self  
    end

    def get_away
        @health -= 15
        puts "The ninja got away. Her health is now #{@health}."
        self  
    end 
end 

ninja = Ninja.new 
ninja2 = Ninja.new 
ninja.steal(human)
ninja2.get_away