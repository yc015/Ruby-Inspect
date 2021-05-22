#!/usr/bin/ruby -w

num_array = [1.1, 2.4, 3.2, 4.4]
new_array = num_array.map {|num| num.to_i - 1} # Convert the Float object into the Integer object and subtract 1
puts new_array.to_s
