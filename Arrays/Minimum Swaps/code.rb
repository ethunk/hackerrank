#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the minimumSwaps function below.
def compare(arr)
  arr_sorted = arr.sort
  differences = 0
  arr_sorted.each_with_index do |element, index|
    if (element != arr[index])
      differences +=1
    end
  end
  return differences
end

def minimumSwaps(arr)
  answer = (compare(arr) - 1)
  return answer
end


# when n = 2, [1,0] = 1
# when n = 3, [3,1,2] = 2
# when n = 4, [2,3,4,1] = 3

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

res = minimumSwaps arr

fptr.write res
fptr.write "\n"

fptr.close()

binding.pry
