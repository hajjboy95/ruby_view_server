require 'erb'

x = 42
numbers = [32,213,1,4,5,74]

largest_number = numbers.max
smallest_number = numbers.min
average_number = numbers.inject { |sum,elem| sum + elem }.to_f

template1 = ERB.new "The value of x is: <%= x %>"
template2 = ERB.new "the largest value of the numbers array is <%= largest_number%>"
template3 = ERB.new "the smallest value of the numbers array is <%= smallest_number%>"
template4 = ERB.new "the avarage value of the numbers array is <%= average_number%>"

puts template1.result(binding)
puts template2.result(binding)
puts template3.result(binding)
puts template4.result(binding)