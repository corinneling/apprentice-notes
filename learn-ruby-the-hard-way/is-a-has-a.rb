## Animal is-a class
class Animal
end

# Dog is a class that inherits from Animal and has an initialize
#name
class Dog < Animal

  def initialize(name)
    # is a variable
    @name = name
  end
end

# is a class that inherits from animal has an initialize
class Cat < Animal

  def initialize(name)
    # is a variable
    @name = name
  end
end

# is a class
class Person

  def initialize(name)
    # is a variable
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

# an object that inherits from Person class
class Employee < Person

  def initialize(name, salary)
    ## takes the name variable from person
    super(name)
    # is a variable
    @salary = salary
  end

end

# a class
class Fish
end

# a class that inherits from Fish
class Salmon < Fish
end

# a class, a kind of fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

# satan is a cat
satan = Cat.new("Satan")

# mary is a person
mary = Person.new("Mary")

# mary's pet is satan
mary.pet = satan

# frank is an employee
frank = Employee.new("Frank", 120000)

# franks pet is rover
frank.pet = rover

# flipper is a fish
flipper = Fish.new()

# crouse is a salmon
crouse = Salmon.new()

# harry is an instance of a halibut
harry = Halibut.new()
