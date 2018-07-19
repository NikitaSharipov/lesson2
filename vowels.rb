vowels = []

alphabet = ('a' .. 'z')
alphabet = alphabet.to_a

i = 0

for letter in alphabet
  a = []
  # .scan возвращает пустой массив если не находит совпадений
  if a != alphabet[i].scan(/[aeouiy]/)
    vowels.push(alphabet[i].scan(/[aeouiy]/))
    vowels.push(i+1)
  end
  i += 1
end

vowels_hash = Hash[*vowels]

vowels_hash.each do |key, value|
  puts "#{key} = #{value}"
end

