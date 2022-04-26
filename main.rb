require 'colorize'
require 'tty-prompt'
require './coffee_class'


## WELCOME MESSAGE
File.open("welcome.txt", "r") do |file|
    puts file.read()
end

## START MENU
puts "What would you like to do?"
puts "Start (1)"
puts "Help (2)"
puts "Exit (3)"

start_select = gets.chomp.to_i 

## START/HELP/EXIT menu selections
if start_select == 1
  puts "Welcome to the starbucks program! Please enter your name to get started:"
  barista_name = gets.strip

elsif
    File.open("help.txt", "r") do |file|
        puts file.read()
    end 
end

puts "Welcome barista #{barista_name}. Would you like to start (Y/N)?"
start_program = gets.chomp 


if start_program == "Y"
    puts "Would you like to view Coffee or Frappucino beverages?"
end 

beverage_select = gets.chomp

## SELECT BEVERAGE
if beverage_select == 'Coffee'
  puts "Please select a coffee from the following options: "
  puts "Flat-White (1)"
  puts "Cappucino (2)"
  puts "Mocha (3)"
  puts "Chai (4)"
  puts "Latte (5)"
end

coffee_menu_select = gets.chomp.to_i

if beverage_select == 'Frappucino'
  puts "Please select a frappucino from the following options: "
  puts "Strawberries and Cream (1)"
  puts "White Mocha (2)"
  puts "Javachip (3)"
  puts "Smores (4)"
  puts "Espresso (5)"
end

frappucino_menu_select = gets.chomp.to_i

## COFFEE SELECT LOOP
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


## FRAPPUCINO SELECT LOOP
loop do 
    if frappucino_menu_select == 1
        puts FrappucinoSelect.new 'Strawberries and Cream', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif frappucino_menu_select == 2
        puts FrappucinoSelect.new 'White Mocha', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif frappucino_menu_select == 3
        puts FrappucinoSelect.new 'Javachip', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif frappucino_menu_select == 4
        puts FrappucinoSelect.new 'Smores', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'

    elsif frappucino_menu_select == 5
        puts FrappucinoSelect.new 'Espresso', 5.94, '1) Airate Milk for 2 seconds. 2) Pour and serve'
    end
    break
end

## VIEW COFFEE SHOTS LOOP
puts "Would you like to view how many coffee shots for each size? (Y/N)"
view_shots = gets.chomp

if view_shots == 'Y'
    puts "Please select: Tall, Grande or Venti"
end 

shot_selection = gets.chomp

## PRINT COFFEE SHOTS
if shot_selection == "Tall"
    tall = {'FlatWhite' => 2, 'Cappucino' => 2, 'Mocha' => 2, 'Chai' => 0, 'Latte' => 2}
      tall.each { |beverage, shots| 
        puts "Beverage: #{beverage} Shots: #{shots}" 
    } 

elsif shot_selection == "Grande"
    grande = {"Flat-White" => 3, "Cappucino" => 2, "Mocha" => 2, "Chai" => 0, "Latte" => 2}
        grande.each { |size, shots| 
            puts "Drnk: #{size} Shots: #{shots}" 
    } 

elsif shot_selection == "Venti"
    venti = {"Flat-White" => 4, "Cappucino" => 3, "Mocha" => 3, "Chai" => 0, "Latte" => 3}
        venti.each { |size, shots| 
            puts "Drnk: #{size} Shots: #{shots}" 
    } 
end
    







   

 








        






