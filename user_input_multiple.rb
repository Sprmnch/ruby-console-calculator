numArray = []
opsArray = []

puts "Enter an expression"
expression = gets.chomp

opsCounter = 0
charCounter = 0

expression.each_char do |char|
  case char
    when char.match(/0-9/)
      numArray[opsCounter] += char
    when "+"
      opsArray[opsCounter] = char
      opsCounter += 1
    when "-"
      opsArray[opsCounter] = char
      opsCounter += 1
    when "*"
      opsArray[opsCounter] += char
      if opsArray == "**"
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