## Coffee class (name,steps)
class CoffeeSelect 
    def initialize(coffee,steps)
         @coffee = coffee
         @steps = steps
    end

    def to_s 
         "The steps for creating a #{@coffee}: #{@steps}"
    end
end


