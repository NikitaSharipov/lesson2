vowels = []
vowels_hash = Hash.new

alphabet = ('a' .. 'z')
alphabet = alphabet.to_a

i = 0

alphabet.each_with_index do |value,index|
  a = []
  # .scan возвращает пустой массив если не находит совпадений
  if a != value.scan(/[aeouiy]/)
   vowels_hash.merge!(value.scan(/[aeouiy]/)[0] => index)    
  end
end

vowels_hash.each do |key, value|
  puts "#{key} = #{value}"
end

