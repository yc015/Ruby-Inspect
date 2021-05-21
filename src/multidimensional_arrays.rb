#!/usr/bin/ruby -w

a = Array.new(3, 4)  # a = [4, 4, 4]
b = Array.new(2, 4)  # b = [4, 4]
c = [a, b]                   # c = [[4, 4, 4], [4, 4]]
d = Array.new(2, c)   # d = [[[4, 4, 4], [4, 4]],  [[4, 4, 4], [4, 4]]]
puts d