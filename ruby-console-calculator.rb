def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def power(num1, num2)
  num1 ** num2
end

def modulus(num1, num2)
  num1 % num2
end

puts "Put in an expression"
expression = gets.chomp

operationChosen = false
math1 = ""
math2 = ""
operation = ""
charCount = 0

expression.each_char do |char|
  if operationChosen == false
    case char
      when "0".."9"
        math1 += char
      when "+"
        operation = char
        operationChosen = true
      when "-"
        operation = char
        operationChosen = true
      when "*"
        operation += char
        if operation == "**"
          operationChosen = true
        elsif expression[charCount+1] != "*"
          operationChosen = true
        end
      when "%"
        operation = char
        operationChosen = true
    end
  else
    math2 += char
  end
  charCount += 1
end
math1 = math1.to_f
math2 = math2.to_f
if operation == "+"
  puts add(math1, math2)
elsif operation == "-"
  puts subtract(math1, math2)
elsif operation == "*"
  puts multiply(math1, math2)
elsif operation == "/"
  puts divide(math1,math2)
elsif operation == "**"
  puts power(math1,math2)
elsif operation == "%"
  puts modulus(math1,math2)
else
  puts "That is not right!"
end