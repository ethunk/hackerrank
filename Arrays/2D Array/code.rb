#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
  max = -100

 4.times do |i|
  4.times do |k|
    # i starts with zero
    sum = arr[k][i]+arr[k][i+1]+arr[k][i+2]+arr[k+1][i+1]+arr[k+2][i]+arr[k+2][i+1]+arr[k+2][i+2]
    max = sum if sum>max
  end
 end
return max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr

fptr.write result
fptr.write "\n"

fptr.close()
