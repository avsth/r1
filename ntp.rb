# 50 page
# Get My Number Game
# Written by: you!


puts "Welcome to 'Get My Number Game'"
print "What's your name? "

input = gets
name = input.chomp

puts "Welcome, #{name}!"

#Сохранение  случайного числа

puts "I've got a random number between 1 and 100."
puts "Can you quess it?"
target = rand(100) + 1

#Отслеживание кол-ва попыток

num_quesses = 0

#Признак продолжения игры
quessed_it = false

while num_quesses < 10 && quessed_it == false

  puts "You've got #{10 - num_quesses} quesses left."
  print "Make a quess: "
  quess = gets.to_i

  num_quesses += 1

  # Сравнение введенного числа с загаданным
  # и вывод соответствующего сообщения

  if quess < target
    puts "Oops. Your quess was Low"
  elsif quess > target
    puts "Oops. Your quess was High"
  elsif quess = target
    puts "Goodjob, #{name}!"
    puts "You quessed my number in #{num_quesses} quesses!"
    quessed_it = true
  end

end

# Если попыток не осталось, сообщить загаданное число

if not quessed_it
  puts "Sorry. You didn't qet my number. (It was #{target}.)"
end
