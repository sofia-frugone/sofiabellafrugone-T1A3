## Coffee class (name,steps,price)
class CoffeeSelect 
    def initialize(coffee, price, steps)
         @coffee = coffee
         @price = price
         @steps = steps
    end

    def to_s 
         "The steps for creating a #{@coffee} is: #{@steps}. The price is $#{@price}."
    end
end


