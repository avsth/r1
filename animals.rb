
class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name is wrong!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "Where is your brain?"
    end
    @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says Bark"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def to_s
    "#{@name}, #{@age}"
  end
end


class Dog < Animal
  def to_s
    "#{@name} is the dog, #{@age}"
  end
end

class Bird < Animal
  def talk
    puts "Chirp! Chirp!"
  end

  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Cat < Animal
  def talk
    puts "Meow!"
  end

  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!."
    super
  end
end


lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 3

puts lucy

parrot = Bird.new
parrot.name = "Parr"
parrot.age = 1
puts parrot