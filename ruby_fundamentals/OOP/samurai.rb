require_relative 'Human'
class Samurai < Human  
@@how_many = 0

    def initialize
        super 
        @health = 200
        @@how_many += 1
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Samurai)
            obj.health == 0
            puts "The samurai's health is #{@health}. The opponent's health is now #{obj.health}." 
            true
        else
            false
        end 
    end

    def meditate
        puts "The samurai's health is restored to #{@health}."
        @health == 200 
    end 

    def how_many
        puts "There are #{@@how_many} samurais."
    end 
end 

samurai = Samurai.new 
samurai2 = Samurai.new 
samurai.death_blow(samurai2)
samurai2.how_many