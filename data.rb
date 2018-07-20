puts "Введите пожалуйста последовательно три числа, которые обозначают число месяц и год"


month_array_days = [31,28,31,30,31,30,31,31,30,31,30,31]

day = gets.chomp
month = gets.chomp
year = gets.chomp

day = day.to_i
month = month.to_i
year = year.to_i


if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  puts "Год високосный"
  visokos = true
  else puts " Год не високосный"
  visokos = false
end

if visokos
  month_array[3] += 1
end

i = 1
sum = 0


while i < month_array_days.size do
     month_array_days[i-1] = month_array_days[i-1] + sum
     sum = month_array_days[i-1]
  i += 1
end

month_array_days.unshift(0)



  number = month_array_days[month-1] + day
  puts "Порядковый номер выбранной даты =  #{number}"
    
