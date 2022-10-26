# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE

  result = 0

  # Sums up every number in the array
  for num in arr do

  	result += num

  end

	return result

end 

def max_2_sum arr
  # YOUR CODE HERE

  # Initialize variables
  max1 = 0
  max2 = 0
  len = arr.length
  result = 0

  # If the length of the array is greater than 1
  if len > 1
    
    # Sort the array and get the two largest numbers which are at the end
    # of the array now
    newArr = arr.sort
    max1 = newArr[len - 1]
    max2 = newArr[len - 2]
    result = max1+max2

  # If the array only contains one element
  elsif len == 1
    result = arr[0]
  end

  # If array is empty result will remain 0
  return result

end 

def sum_to_n? arr, n
  # YOUR CODE HERE

  # If the length of the array is greater than 1
  if arr.length > 1
    # Any combination of number will be tested to see if they add up to n
    return arr.combination(2).any? {|num1, num2| num1 + num2 == n}

  # If none add up to n it will return false
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE

  # Returns new string with the name attached
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE

  # Sets characters that need to be excluded from the search
  consonant = /^[^aeiouAEIOU\d\W_]/i

  # Because consonant will return false if any vowels are
  # used to start, it will return true if any consonants are 
  # used to start
  if consonant.match(s)
    return true
  else 
    return false
  end 

end

def binary_multiple_of_4? s
  # YOUR CODE HERE

  # Sets regex to match binary numbers in the string
  binary = /^[01]+$/.match(s)

  # Checks if the binary number in the string in divisible by 4
  if  binary && s.to_i(2) % 4 == 0
    return true
  
  else
    return false
  end

end

# Part 3

class BookInStock

  # Constructor of the class
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
