# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  len = arr.length
  index = 0
  total = 0
  while index < len do
    total += arr[index]
    index += 1
  end
  return total
end

def max_2_sum arr
  len = arr.length
  if len == 1
    return arr[0]
  end
  if !arr.any?
    return 0
  end
  s_arr = arr.sort
  first = s_arr[-1]
  second = s_arr[-2]
  return first+second
end

def sum_to_n? arr, n
  len = arr.length
  for iter in 0..(len-1) do
    for item in (iter+1)..(len-1) do
      # iterating each element and checking the sum against n
      if arr[iter] + arr[item] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  str = "Hello, "
  return str + name
end

def starts_with_consonant? s
  # match vowels and non letters
  if /^[^aeiou\d\W]/i.match(s)
    return true
  end
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  # checking for valid binary
  elsif /[01]/.match(s)
    # A binary multiple of 4 is left shifted by two bits i.e last two digits are 0
    if /^[10]*00$/.match(s)
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock

  # contructor
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if isbn.empty?
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end
  end

  # setter methods
  def isbn=(value)
    @isbn = value
    if isbn.empty?
      raise ArgumentError
    end
  end

  def price=(value)
    @price = value
    if price <= 0
      raise ArgumentError
    end
  end

  # getter methods
  def isbn
    @isbn
  end

  def price
    @price
  end

  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end
