# Boris Bikes 

**Requirements**

Taken from https://github.com/makersacademy/course/tree/master/boris_bikes

This is a re-do of the first weeks challenge at Makers Academy

This project emulates London's Boris Bikes. It implements the following user stories:

# User Stories

>As a person,
>So that I can use a bike,
>I'd like a docking station to release a bike. (Done ✓)

- As a person,
  So that I can use a good bike,
  I'd like to see if a bike is working (Done ✓)

- As a member of the public
  So I can return bikes I've hired
  I want to dock my bike at the docking station (Done ✓)

- As a member of the public
  So I can decide whether to use the docking station
  I want to see a bike that has been docked (Done ✓)

- As a member of the public,
  So that I am not confused and charged unnecessarily,
  I'd like docking stations not to release bikes when there are none available (Done ✓)

- As a maintainer of the system,
  So that I can control the distribution of bikes,
  I'd like docking stations not to accept more bikes than their capacity. (Done ✓)

- As a system maintainer,
  So that I can plan the distribution of bikes,
  I want a docking station to have a default capacity of 20 bikes. (Done ✓)

- As a system maintainer,
  So that busy areas can be served more effectively,
  I want to be able to specify a larger capacity when necessary. 
  (Done ✓)

- As a member of the public,
  So that I reduce the chance of getting a broken bike in future,
  I'd like to report a bike as broken when I return it. (Done ✓)

- As a maintainer of the system,
  So that I can manage broken bikes and not disappoint users,
  I'd like docking stations not to release broken bikes. (Done ✓)

- As a maintainer of the system,
  So that I can manage broken bikes and not disappoint users,
  I'd like docking stations to accept returning bikes (broken or not).
  (Done ✓)

- As a maintainer of the system,
  So that I can manage broken bikes and not disappoint users,
  I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
  (Not Done Yet ✗) 

# Running the program in irb and example usage

$ git clone https://github.com/Thatguy560/Boris-Bikes-Final.git
  
$ cd Boris-Bikes-Final

$ type irb in the terminal 

$ require './lib/docking_station.rb'

$ Create a new docking station (and as bonus, you can specify it's max capactiy) by typing in dockingstation = DockingStation.new(40). Otherwise just type in dockingstation = DockingStation.new and it will default to it's regular capacity of 20. 

$ Create some new bikes using bike1 = Bike.new, bike2 = Bike.new, bike3 = Bike.new

$ you can report the status of these bikes from working (@working=true) to broken (@working=false) by typing in bike1.report_broken for example.

$ You can dock a bike using dockingstation.dock(bike1) or if you wanted to dock the 2nd bike for instance dockingstation.dock(bike2)

$ If you want to release a bike, type in dockingstation.release_bike

**Some personal methods I've added** 

$ If you want to count the number of bikes in the docking station type in dockingstation.bikes_available 

$ If you want to see a list of bikes that are docked type in dockingstation.view_available_bikes

# Testing the program

$ bundle install 

$ rspec

Test Coverage:  100.00% -- 74/74 lines in 4 files
  
## Testing Frameworks Used: 
  
 Rubocop, Simplecov, RSpec


