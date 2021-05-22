#!/usr/bin/ruby -w

puts (0..Float::INFINITY).step(4).take(5).to_s # Print first 5 multiples of 4 from 0 to infinity
# Lazy Lists: Print the odd number from 10 to 20
puts ((0..Float::INFINITY).lazy.drop(10).take(10).select {|num| num.odd?}).to_a.to_s
