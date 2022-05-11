# Starbucks Coffee Program

- This program is intened for new starbucks trainees
- You will be able to select a beverage and see the related steps for creating the beverage 
- Then you are asked if you want to see the coffee shots required for each drink size
- After, you can view the cost of each drink! (tall, grande, or venti)
- ⭐Enjoy⭐

 ## Features

- View how to make a coffee: user can select a coffee from 5 different options. Once it's been selected the program will output what the steps for making the coffee are. 
- View coffee shots: see the total number of shots required for each size.
- View coffee price: view prices for each drink for each size.

## Implementation of each feature

- Feature 1 (View how to make coffee): First a coffee class was created and initialised. A method was created that lists all the beverage options. After, a loop was implemented that lists the steps for making the drink. The user can select from 5 beverages by picking a number from 1-5. 
- Feature 2 (View coffee shots): A hash was used to store the number of coffee shots required for each size and the realted coffee. I used the .each method to iterate over the array.
- Feature 3 (View drink cost): The implementation of this feature was similar to feature 2. The main difference being the output to the user and the use of the colorize gem. 

## Help
To view help information while in the program please run the following code:

```
ruby main.rb help
```

## Development plan

- [Trello](https://trello.com/b/oi5rvE2i/terminal-app-development-plan) - Link to software development plan on trello
<img width="1439" alt="Screen Shot 2022-05-11 at 2 06 28 pm" src="https://user-images.githubusercontent.com/88522139/167767280-3ed656bf-fd41-4509-9a8d-7f68dde1727a.png">
<img width="773" alt="Screen Shot 2022-05-11 at 2 06 42 pm" src="https://user-images.githubusercontent.com/88522139/167767329-623d1b53-c067-496b-a065-8053fa6d8b8c.png">
<img width="771" alt="Screen Shot 2022-05-11 at 2 06 56 pm" src="https://user-images.githubusercontent.com/88522139/167767336-8fddf5dd-e3ef-41dc-a100-a333755f601d.png">
<img width="777" alt="Screen Shot 2022-05-11 at 2 07 12 pm" src="https://user-images.githubusercontent.com/88522139/167767340-99a133e6-f972-42c4-a13a-7503c445c6ef.png">



## Installation/dependencies 

You will need to have Ruby 3.1.2 installed.
[Download](https://www.ruby-lang.org/en/downloads/)

This program requires these gems to run:
[TTY-box](https://github.com/piotrmurach/tty-box) 
[TTY-font](https://github.com/piotrmurach/tty-font) 
[Colorize](https://github.com/fazibear/colorize) 


Install the dependencies and run the following code to start the program:

```
./run_app.sh
```

## System/Hardware requirements
- This program was developed on macOS Bigsur 
- It's only been tested on a mac system so the experience might differ on different systems 
- Processor: 1.1 GHz Dual-Core Intel Core i3
- Memory: 8 GB 3733 MHz LPDDR4X
- Graphics: Intel Iris Plus Graphics 1536 MB
