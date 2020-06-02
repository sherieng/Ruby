class MathDojo

    def initialize
        @sum = 0
        @difference = 0
        self
    end 

    def add *params
        params.each do |i|
            if i.kind_of?(Array)
                i.each do |x|
                    @sum += x
                end 
            else
                @sum += i
            end
        end
        p @sum
        self
    end 

    def subtract *params
        params.each do |i|
            if i.kind_of?(Array)
                i.each do |x|
                    @difference -= x
                end
            else 
                @difference -= i
            end
        end
        puts @difference
        self
    end 

    def result 
        result = @sum + @difference
        puts '%.2f' % result
    end
end
challenge1 = MathDojo.new.add(2).add(2,5).subtract(3, 2).result # => 4  
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result 
