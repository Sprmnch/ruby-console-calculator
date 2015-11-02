numArray = []
opsArray = []

puts "Enter an expression"
expression = gets.chomp

opsCounter = 0
charCounter = 0

expression.each_char do |char|
  case char
    when "0".."9"
      numArray[opsCounter] = "#{numArray[opsCounter]}#{char}"
    when "."
      numArray[opsCounter] = "#{numArray[opsCounter]}#{char}"
    when "+"
      opsArray[opsCounter] = char
      opsCounter += 1
    when "-"
      opsArray[opsCounter] = char
      opsCounter += 1
    when "*"
      opsArray[opsCounter] = "#{opsArray[opsCounter]}#{char}"
      if opsArray[opsCounter] == "**"
          opsCounter += 1
      elsif expression[charCounter+1] != "*"
          opsCounter += 1
      end
    when "/"
      opsArray[opsCounter] = char
      opsCounter += 1
    when "%"
      opsArray[opsCounter] = char
      opsCounter += 1
  end
  charCounter += 1
end

numIntArray = numArray.map { |s| s.to_f }

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

opsArray.push("")

while opsArray[0] != ""
  math1 = numIntArray.shift
  math2 = numIntArray.shift
  operation = opsArray.shift
  
  if operation == "+"
    numIntArray.unshift(add(math1, math2))
  elsif operation == "-"
    numIntArray.unshift(subtract(math1, math2))
  elsif operation == "*"
    numIntArray.unshift(multiply(math1, math2))
  elsif operation == "/"
    numIntArray.unshift(divide(math1,math2))
  elsif operation == "**"
    numIntArray.unshift(power(math1,math2))
  elsif operation == "%"
    numIntArray.unshift(modulus(math1,math2))
  end
end
puts numIntArray
