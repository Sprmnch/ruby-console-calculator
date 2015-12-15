expression = gets.chomp

orderOfOpsArray1=expression.split(/\-|\+/)

def parser(input)
  numArray=[]
  opsArray=[]
  opsCounter=0
  input.each_char do |char|
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
      opsArray[opsCounter] =char
      opsCounter += 1
    when "^"
      opsArray[opsCounter]=char
      opsCounter+=1
    when "/"
      opsArray[opsCounter] = char
      opsCounter += 1
    when "%"
      opsArray[opsCounter] = char
      opsCounter += 1
    end
  end
  return [numArray,opsArray]
end
complexArray = []
for i in 0..orderOfOpsArray1.length-1
  complexArray[i] = parser(orderOfOpsArray1[i])
end

expression2 = ""

for i in 0..complexArray[0].length-1
  expression2+=complexArray[i][0].to_s+complexArray[i][1].to_s
end
puts expression2