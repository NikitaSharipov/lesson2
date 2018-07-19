fibonachi = []
first = 0
second = 1
while first+second <= 100 do
  fibonachi.push(first+second)
  second = first + second
  first = second - first
end

puts fibonachi
  
  
  
  
