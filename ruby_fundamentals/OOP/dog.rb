require_relative 'mammal'
class Dog < Mammal  

    def pet
        @health += 5
        puts "The dog has been petted. The dog's health is now #{@health}."
        self
    end 

    def walk 
        @health -=1 
        puts "The dog has walked. The dog's health is now #{@health}."
        self
    end
    
    def run 
        @health -=10 
        puts "The dog has ran. The dog's health is now #{@health}."
        self
    end
    
end 

dog = Dog.new
dog.walk.walk.walk.run.run.pet.display_health