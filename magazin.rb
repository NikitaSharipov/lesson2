
shop_hash = Hash.new

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

#  shop_hash.merge!(name => { count: count, price: price })
  shop_hash[name] = {count: count, price: price}

end

puts shop_hash

sum = 0
gen_sum = 0

shop_hash.each do |k,v| 
    print k
    print " "
    print v
    print " "
    puts sum = v[:count] * v[:price]
    gen_sum += sum
end


print "Общая сумма покупок: "
puts gen_sum


