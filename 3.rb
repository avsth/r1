class Dog

  def name=(new_value)
    @name = new_value
  end

  def name
    @name
  end

  def age=(new_value)
    @age = new_value
  end

  def age
    @age
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "Bark!"
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

fido = Dog.new
rex = Dog.new

fido.talk
rex.move("home")
