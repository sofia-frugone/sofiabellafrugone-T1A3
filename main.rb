
require 'colorize'
require 'tty-prompt'
require './coffee_class'


## Welcome message
puts '--------------------------------'
puts 'Welcome to the Starbucks Program'.colorize(:green)
puts '--------------------------------'


## Enter name
puts "Welcome! Please enter your name to get started:"
barista_name = gets.strip

puts "Welcome barista #{barista_name}. Would you like to start (Y/N)?"
start_program = gets.chomp 


if start_program = "Y"
    puts "Would you like to view Coffee or Frappucino beverages?"
end 

beverage_select = gets.chomp

## Select coffee or frap
if beverage_select == 'Coffee'
  puts "Please select a coffee from the following options: "
  puts "Flat-White (1)"
  puts "Cappucino (2)"
  puts "Mocha (3)"
  puts "Chai (4)"
  puts "Latte (5)"

elsif beverage_select == 'Frappucino'
  puts "Please select a frappucino from the following options: "
  puts "Strawberries and Cream(1)"
  puts "White Mocha (2)"
  puts "Javachip (3)"
  puts "Smores (4)"
  puts "Espresso (5)"
end

coffee_menu_select = gets.chomp.to_i

## Coffee select loop
loop do 
    if coffee_menu_select == 1
        puts CoffeeSelect.new 'Flat-White', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif coffee_menu_select == 2
        puts CoffeeSelect.new 'Cappucino', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif coffee_menu_select == 3
        puts CoffeeSelect.new 'Mocha', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif coffee_menu_select == 4
        puts CoffeeSelect.new 'Chai', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif coffee_menu_select == 5
        puts CoffeeSelect.new 'Latte', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'
    end
    break
end






   

 








        






