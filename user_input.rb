puts "What would you like to calculate?"
math1 = gets.chomp
puts "What would you like to do with the number?"
math_operation = gets.chomp
puts "What other number would you like to use?"
math2 = gets.chomp
if math_operation == "+"
  puts add(math1, math2)
elsif math_operation == "-"
  puts subtract(math1, math2)
elsif math_operation == "*"
  puts multiply(math1, math2)
elsif math_operation == "/"
  puts divide(math1,math2)
elsif math_operation == "**"
  puts power(math1,math2)
elsif math_operation == "%"
  puts modulus(math1,math2)
else
  puts "That is not right!"
end
