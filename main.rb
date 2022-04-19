
require 'colorize'
require 'tty-prompt'

## Welcome message
puts '----------------------------------'
puts 'Welcome to the Starbucks Simulator'
puts '----------------------------------'

## Coffee class (name,steps)
class Coffee 
     def initialize(name, steps)
          @name = name
          @steps = steps
     end

     def to_s 
          "The steps for creating a #{@name} is #{@steps}"
     end
end

## Coffee select menu
puts "Please select from the following options: "
puts "1) Flat white"
puts "2) Cappucino"
puts "3) Mocha"
puts "4) Chai latte"
puts "5) Latte"
selection = gets.chomp.to_i

## User selection
if selection == 1
     puts Coffee.new("Flat white", "Step 1: Make Coffee")

elsif selection == 2
     puts Coffee.new("Cappucino", "Step 1: Make Coffee")

elsif selection == 3
     puts Coffee.new("Mocha", "Step 1: Make Coffee")

elsif selection == 4
     puts Coffee.new("Chai latte", "Step 1: Make Coffee")

elsif selection == 5
     puts Coffee.new("Latte", "Step 1: Make Coffee")
end 







        






