# sets cars to 100
cars = 100

# sets space in cars to 4
space_in_a_car = 4.0

# sets drivers to 30
drivers = 30

# sets passengers to 90
passengers = 90

# subtracts drivers from cars or 100 - 30
cars_not_driven = cars - drivers

# sets cars driven to the same value as drivers
cars_driven = drivers

# multiplies cars driven and space in a car or 30 * 4.0
carpool_capacity = cars_driven * space_in_a_car

# divides passengers by cars driven or 90 / 30
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
