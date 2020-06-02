require_relative 'Human'
class Wizard < Human  
    
    def initialize
        super 
        @intelligence = 25
        @health = 50
    end 

    def heal 
        @health += 10
        puts "The wizard's health is now #{@health}."
        self 
    end

    def fireball(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 20
            puts "The wizards's health is #{@health}. The opponent's health is now #{obj.health}."
            true
        else
            false
        end
        self  
    end
end 

wiz = Wizard.new 
wiz2 = Wizard.new 
wiz.heal
