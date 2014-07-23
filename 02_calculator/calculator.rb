def add(num1,num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(myArray)
  num = 0
  myArray.each do |arr|
    num = num + arr
  end
  return num
end

def multiply(myArray)
  num = 1
  myArray.each do |arr|
    num = num * arr
  end
  return num
end

def power(num, power)
  num ** power
end

def factorial(num)
  if num <= 1
    1
  else
    num * factorial(num - 1)  
  end
end