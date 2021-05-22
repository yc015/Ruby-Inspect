#!/usr/bin/ruby -w

num_array = (1..8).to_a
puts (num_array.map {|num| num ** 2}).to_s    # Square every element in the num_array and print the array
puts (num_array.select {|num| num.odd?}).to_s # Only keep the odd numbers in the num_array
puts (num_array.inject(0, :+)).to_s           # Starting from 0, apply the addition to
                                              # the first argument and the items in the array. Equivalent to foldl (+) 0 [1..8]
