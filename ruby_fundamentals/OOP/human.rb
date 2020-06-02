class Human
    attr_accessor :strength, :intelligence, :stealth, :health, :human 
    
    def initialize 
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end 

    def attack(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
            puts "The human's health is #{@health}. The opponent's health is now #{obj.health}."
            true
        else
            false
        end
        self 
    end
end 

human = Human.new 
