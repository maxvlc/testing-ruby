class Calculator
  def add(x, y)
    x+y
  end

  def subtract(x, y)
    x-y
  end
end

def verify(expected, actual, message)
  if actual == expected
    puts "\033[32m #{message} passed \033[0m"
  else
    puts "\e[31m #{message} failed \e[0m"
  end
end

# calculator = Calculator.new
# result = calculator.add(1, 2)
# verify(3, result, 'Addition')
# result2 = calculator.subtract(2, 1)
# verify(1, result2, 'Subtraction')