
shop = []
price_count = []

puts "Введите название товара, цену, количество товара поочередно"
puts "Для того, чтобы закончить ввод ведите вместо название товара слово Стоп"

loop do
puts "Название: "
name = gets.chomp
break if name == "Стоп" 
puts "Цена: "
price = gets.chomp
puts "Количество: "
count = gets.chomp

name = name.to_sym
price = price.to_f
count = count.to_i

shop.push(name)
shop.push(price_count={count =>price})

end

shop_hash = Hash[*shop]

sum = 0
gen_sum = 0
shop_hash.each do |k,v| 
    print k
    print " "
    print v
    print " "
  v.each do |key,value|
    sum = key * value
    gen_sum += sum
    puts sum
  end
end

print "Общая сумма покупок: "
puts gen_sum
