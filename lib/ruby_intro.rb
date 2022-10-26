# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE

  result = 0

  for num in arr do

  	result += num

  end

	return result

end 

def max_2_sum arr
  # YOUR CODE HERE

  max1 = 0
  max2 = 0
  len = arr.length
  result = 0

  if len > 1
    
    newArr = arr.sort
    max1 = newArr[len - 1]
    max2 = newArr[len - 2]
    result = max1+max2

  elsif len == 1
    result = arr[0]
  end

  result

end 

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  if arr.length > 1
    arr.combination(2).any? {|num1, num2| num1 + num2 == n}

  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE

  consonant = /^[^aeiouAEIOU\d\W_]/i
  if consonant.match(s)
    return true
  else 
    return false
  end 

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  multiple = /^[01]+$/.match(s)
  if  multiple && s.to_i(2) % 4 == 0
    return true
  
  else
    return false
  end

end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  attr_reader :isbn, :price

  def isbn=(isbn)
    if isbn.empty 

      @isbn = isbn
      fail ArgumentError, 'Every book must have ISBN code number.'

    end
  end

  def price=(price)
    @price = price
    fail ArgumentError, 'Every book must have price value.' unless price > 0

  end

  def price_as_string
    format '$%.2f', @price
  end
end
