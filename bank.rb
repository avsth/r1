puts "Первоначальный баланс:"
client_balance = gets.chomp.to_i
bank_balance = 0
count_5 = 0
count_10 = 0
count_100 = 0
count_50 = 0
while true
  puts "Введите 1 для просмотра баланса"
  puts "Введите 2 для внесения наличных"
  puts "Введите 3 для снятия наличных"
  number = gets.chomp
  if number == '1'
    puts client_balance
  elsif number == '2'
    puts "Введите размер вашей банкноты"
    banknote = gets.chomp.to_i
    if banknote == 50 || banknote == 5 || banknote == 10 || banknote == 100
      client_balance += banknote
      bank_balance += banknote
      if banknote == 5
        count_5 += 1
      end
      if banknote == 10
        count_10 += 1
      end
      if banknote == 50
        count_50 += 1
      end
      if banknote == 100
        count_100 += 1
      end
    else
      puts "Неправильная купюра"
    end
  elsif number == '3'
    puts "Сколько вы хотите снять?"
    snyat = gets.chomp.to_i
    snyat2 = snyat
    c_100 = count_100
    c_50 = count_50
    c_10 = count_10
    c_5 = count_5
    if snyat > client_balance
      puts "Недостаточно средств"
    else
      while snyat2 >= 100 && c_100 > 0
        snyat2 -= 100
        c_100 -= 1
      end
      while snyat2 >= 50 && c_50 > 0
        snyat2 -= 50
        c_50 -= 1
      end
      while snyat2 >= 10 && c_10 > 0
        snyat2 -= 10
        c_10 -= 1
      end
      while snyat2 >= 5 && c_5 > 0
        snyat2 -= 5
        c_5 -= 1
      end
      if snyat2 == 0
        puts "готово"
        bank_balance -= snyat
        client_balance -= snyat
        count_100 = c_100
        count_50 = c_50
        count_10 = c_10
        count_5 = c_5
      else
        puts "Недостаточно купюр для выдачи сдачи"
      end
    end
  end
end