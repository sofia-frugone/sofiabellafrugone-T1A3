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

elsif start_select == 2
    File.open("help.txt", "r") do |file|
        puts file.read()
    end 
end

puts "Welcome barista #{barista_name}. Would you like to start (Y/N)?"
start_program = gets.chomp 

## SELECT BEVERAGE COFFEE
if start_program == "Y"
  puts "Please select a coffee from the following options: "
  puts "Flat-White (1)"
  puts "Cappucino (2)"
  puts "Mocha (3)"
  puts "Chai (4)"
  puts "Latte (5)"
end
    
coffee_menu_select = gets.chomp.to_i

## COFFEE SELECT LOOP
loop do 
    if coffee_menu_select == 1
        puts CoffeeSelect.new 'Flat-White', 5.94, '1) Airate Milk for 2 seconds. 2) Add fresh coffee shots and pour milk. 3) Serve.'

    elsif coffee_menu_select == 2
        puts CoffeeSelect.new 'Cappucino', 5.94, '1) Airate Milk for 5 seconds. 2) Add fresh coffee shots and pour milk. 3) Serve.'

    elsif coffee_menu_select == 3
        puts CoffeeSelect.new 'Mocha', 5.94, '1) Airate Milk for 3 seconds. 2) Add mocha syrup. 3) Add shots and milk and stir well. 4) Finish with whip cream. 5) Serve.'

    elsif coffee_menu_select == 4
        puts CoffeeSelect.new 'Chai', 5.94, '1) Airate Milk for 3 seconds. 2) Add chai syrup. 3) Add milk and stir well. 4) Finsih with chai powder. 5) Serve.'

    elsif coffee_menu_select == 5
        puts CoffeeSelect.new 'Latte', 5.94, '1) Airate Milk for 3 seconds. 2) Add fresh coffee shots and milk. 3) Serve.'
    end
    break
end


## VIEW COFFEE SHOTS LOOP
puts "Would you like to view how many coffee shots for each size? (Y/N)"
view_shots = gets.chomp

if view_shots == 'Y'
    puts "Please select: Tall, Grande, or Venti"
end 

shot_selection = gets.chomp

## PRINT COFFEE SHOTS
if shot_selection == "Tall"
    tall = {'Flat-White' => 2, 'Cappucino' => 2, 'Mocha' => 2, 'Chai' => 0, 'Latte' => 2}
      tall.each { |beverage, shots| 
        puts "Drink: #{beverage} Shots: #{shots}" 
    } 

elsif shot_selection == "Grande"
    grande = {"Flat-White" => 3, "Cappucino" => 2, "Mocha" => 2, "Chai" => 0, "Latte" => 2}
        grande.each { |beverage, shots| 
            puts "Drink: #{beverage} Shots: #{shots}" 
    } 

elsif shot_selection == "Venti"
    venti = {"Flat-White" => 4, "Cappucino" => 3, "Mocha" => 3, "Chai" => 0, "Latte" => 3}
        venti.each { |beverage, shots| 
            puts "Drink: #{beverage} Shots: #{shots}" 
    } 
end

## DRINK COST
puts "Would you like to view the cost of each drink? (Y/N)"
drink_cost = gets.chomp

if drink_cost == "Y"
    puts "Please select a size: Tall, Grande, or Venti"
end 

drink_size = gets.chomp.to_i 

## DRINK COST PRINT
if drink_size == "Tall"
    tall = {'Flat-White' => 4.50, 'Cappucino' => 4.50, 'Mocha' => 5.50, 'Chai' => 4.50, 'Latte' => 4.50}
      tall.each { |drink, cost| 
        puts "A tall #{beverage} costs $#{cost}" 
    } 

elsif drink_size == "Grande"
    grande = {"Flat-White" => 5.00, "Cappucino" => 5.00, "Mocha" => 6.00, "Chai" => 5.00, "Latte" => 5.00}
        grande.each { |drink, cost| 
            puts "A grande #{drink} costs $#{cost}" 
    } 

elsif drink_size == "Venti"
    venti = {"Flat-White" => 5.50, "Cappucino" => 5.50, "Mocha" => 6.50, "Chai" => 5.50, "Latte" => 5.50}
        venti.each { |drink, cost| 
            puts "A venti #{drink} costs $#{cost}" 
    } 
end


## PROGRAM FINISH

puts "Thank you for using the starbucks coffee program."
    







   

 








        






