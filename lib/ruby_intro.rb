# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum()
end

def max_2_sum(arr)
  arr.sort.reverse.take(2).sum
end

def sum_to_n?(arr, number)
  for sub_array in arr.permutation(2)
  return true if sub_array.sum == number
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  non_letter = /^[^A-Za-z].*$/
  return false if string =~ non_letter or string.empty?
  first_letter = string.capitalize[0]
  for vowel in ["A","E","I","O","U"]
    return false if vowel == first_letter
  end
  return true
end

def binary_multiple_of_4?(string)
  non_binary = /[^01]/
  return false if string =~ non_binary or string.empty?
  binary = string.to_i(2)
  if binary%4 == 0
    return true 
  else 
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price<=0.0
    @isbn = isbn
    @price = price
  end
  attr_accessor:isbn
  attr_accessor:price
  
  def price_as_string
    "$%0.2f" % [@price]
  end
end
