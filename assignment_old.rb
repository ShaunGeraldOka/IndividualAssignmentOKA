# Class Code: 9372
# Team 2: Ruby
# Oka, Shaun Gerald
# https://www.onlinegdb.com/online_ruby_compiler

def read_num
  num = gets
  if num != 0 && num.to_i == 0
    puts "That is not a number"
    print "Please enter a number: "
    num = read_num
  end
  return num
end

print("Can you enter a number?: ")
num = read_num
x = num.to_i
reversed = 0

while x != 0
  temp = x % 10
  reversed = (reversed * 10) + temp
  x = x / 10
end

puts reversed

x = reversed
even = 0
odd = 0

while x != 0
  temp = x % 10
  if temp % 2 == 0
    even = even + 1
  else
    odd = odd + 1
  end
  x = x / 10
end

puts "Odd Numbers: #{odd}"
puts "Even Numbers: #{even}"
if reversed % 2 == 0
  puts "#{reversed} is even"
else
  puts "#{reversed} is odd"
end