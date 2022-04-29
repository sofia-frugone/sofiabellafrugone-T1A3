require 'colorize'
require './coffee_class'
require 'tty-box'



## GREET
File.open("welcome.txt", "r") do |file|
    puts file.read()
end

## ASKS FOR NAME
begin
  print TTY::Box.frame "Welcome to the starbucks program! Please enter your name to get started:"
  barista_name = gets.strip
  puts "Welcome barista #{barista_name.light_green}."
rescue StandardError => error ## validates name
  puts "Name must not be empty"
  puts error.backtrace
end 





## SELECT COFFEE
def select_beverage
    puts "Please select a coffee from the following options: ".light_blue
    puts "Flat-White (1)"
    puts "Cappucino (2)"
    puts "Mocha (3)"
    puts "Chai (4)"
    puts "Latte (5)"
end 

select_beverage
      
coffee_menu_select = gets.chomp.to_i
  
    

## COFFEE LOOP

if coffee_menu_select == 1
     puts CoffeeSelect.new 'Flat-White', '1) Airate Milk for 2 seconds. 2) Add fresh coffee shots and pour milk. 3) Serve.'.light_blue

elsif coffee_menu_select == 2
     puts CoffeeSelect.new 'Cappucino', '1) Airate Milk for 5 seconds. 2) Add fresh coffee shots and pour milk. 3) Serve.'.light_blue

elsif coffee_menu_select == 3
     puts CoffeeSelect.new 'Mocha', '1) Airate Milk for 3 seconds. 2) Add mocha syrup. 3) Add shots and milk and stir well. 4) Finish with whip cream. 5) Serve.'.light_blue

elsif coffee_menu_select == 4
     puts CoffeeSelect.new 'Chai', '1) Airate Milk for 3 seconds. 2) Add chai syrup. 3) Add milk and stir well. 4) Finsih with chai powder. 5) Serve.'.light_blue

elsif coffee_menu_select == 5
     puts CoffeeSelect.new 'Latte', '1) Airate Milk for 3 seconds. 2) Add fresh coffee shots and milk. 3) Serve.'.light_blue   
end


## VIEW SHOTS LOOP
def view_shots 
    puts "It's important to know how many coffee shots are required for each drink size!".light_blue
    puts "Please select:" 
    puts "Tall (1)" 
    puts "Grande (2)" 
    puts "Venti (3)"
end 

view_shots

shot_selection = gets.chomp.to_i

## PRINT SHOTS
if shot_selection == 1
    tall = {'Flat-White' => 2, 'Cappucino' => 2, 'Mocha' => 2, 'Chai' => 0, 'Latte' => 2}
      tall.each { |beverage, shots|
        puts "Drink: #{beverage}"
        puts "Shots: #{shots}" 
        puts "------------------"
    } 

elsif shot_selection == 2
    grande = {"Flat-White" => 3, "Cappucino" => 2, "Mocha" => 2, "Chai" => 0, "Latte" => 2}
        grande.each { |beverage, shots| 
            puts "Drink: #{beverage}" 
            puts "Shots: #{shots}" 
            puts "------------------"
    } 

elsif shot_selection == 3
    venti = {"Flat-White" => 4, "Cappucino" => 3, "Mocha" => 3, "Chai" => 0, "Latte" => 3}
        venti.each { |beverage, shots| 
            puts "Drink: #{beverage}" 
            puts "Shots: #{shots}" 
            puts "------------------"
    } 
end

## DRINK COST
def drink_cost 
  puts "Time to learn the prices of the drinks you've just learnt to make!".light_blue
  puts "Please select a size...again:"
  puts "Tall (1)"
  puts "Grande (2)"
  puts "Venti (3)"
end 

drink_cost 


drink_size = gets.chomp.to_i

## PRINT DRINK COST 
if drink_size == 1
    tall = {'Flat-White' => '4.50', 'Cappucino' => '4.50', 'Mocha' => '5.50', 'Chai' => '4.50', 'Latte' => '4.50'}
      tall.each { |drink, cost| 
        puts "A tall #{drink} costs $#{cost}".light_blue 
    } 

elsif drink_size == 2
    grande = {"Flat-White" => '5.00', "Cappucino" => '5.00', "Mocha" => '6.00', "Chai" => '5.00', "Latte" => '5.00'}
        grande.each { |drink, cost| 
            puts "A grande #{drink} costs $#{cost}".light_blue
    } 

elsif drink_size == 3
    venti = {"Flat-White" => '5.50', "Cappucino" => '5.50', "Mocha" => '6.50', "Chai" => '5.50', "Latte" => '5.50'}
        venti.each { |drink, cost| 
            puts "A venti #{drink} costs $#{cost}".light_blue
    } 
end


## PROGRAM FINISH

puts "Thank you for using the starbucks coffee program.".light_green 
    







   

 








        






