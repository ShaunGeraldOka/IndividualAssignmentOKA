# Class Code: 9372
# Team 2: Ruby
# Oka, Shaun Gerald
# https://www.programiz.com/ruby/online-compiler/

# reads a positive integer
def read_int
  loop do
    begin
      num = Integer(gets.chomp)
      if num <= 0
        raise ArgumentError
      end
      return num
    rescue ArgumentError
      puts "Error: input may not be a valid positive integer"
      puts "Please enter a valid input:"
    end
  end
end

# reverses a positive integer
def reverse(input)
  reversed = 0
  loop do
    reversed = reversed * 10 + input % 10
    input /= 10
    break if input == 0
  end
  reversed
end

# checks if an integer is odd or even
def check_parity(input)
  input % 2 == 0 ? "even" : "odd"
end

# counts how many odd or even digits based on type
def count_parity(input, type)
  count = 0
  loop do
    count += 1 if check_parity(input % 10) == type
    input /= 10
    break if input == 0
  end
  count
end

# counts how many odd digits
def count_odd(input)
  count_parity(input, "odd")
end

# counts how many even digits
def count_even(input)
  count_parity(input, "even")
end

# Main
puts "Please enter a number:"
num = read_int
reversed = reverse num
odd = count_odd reversed
even = count_even reversed
parity = check_parity reversed

puts "Original Number: #{num}"
puts "Reversed Number: #{reversed}"
puts "Count of Odd Digits: #{odd}"
puts "Count of Even Digits: #{even}"
puts "Parity of '#{reversed}': #{parity}"
