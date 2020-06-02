require_relative 'mammal'
class Lion < Mammal  
    
    def initialize 
        @health = 170
    end 

    def fly 
        @health -= 10
        puts "The lion flys. The lion's health is now #{@health}."
        self
    end 

    def attack_town 
        @health -= 50
        puts "The lion attacks a town. The lion's health is now #{@health}."
        self
    end
    
    def eat_humans
        @health += 20
        puts "The lion eats humans. The lion's health is now #{@health}."
        self
    end

    def display_health
        puts "This is a lion"
        super()
    end
end 

lion = Lion.new
lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health