puts "Введите пожалуйста последовательно три числа, которые обозначают число месяц и год"

month_hash = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31 }

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



month_array = month_hash.to_a.flatten

if visokos
  month_array[3] += 1
end

i = 2
sum = 0

while i <= month_array.size do
  month_array[i-1] = month_array[i-1] + sum
  sum = month_array[i-1]
  i += 2
end

i=0
while i <= 24 do
  if month_array[i] == month
    number = month_array[i + 1] + day
    puts "Порядковый номер выбранной даты =  #{number-31}"
  end
  i += 2
end
    
