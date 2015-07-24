puts "Put in an expression"
expression = gets.chomp

operationChosen = false
num1 = ""
num2 = ""
operation = ""
charCount = 0

expression.each_char do |char|
  if operationChosen == false
    case char
      when "0".."9"
        num1 += char
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
    num2 += char
  end
  charCount += 1
end

puts num1
puts operation
puts num2