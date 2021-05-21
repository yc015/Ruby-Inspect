#!/usr/bin/ruby -w

a = "Hello"
puts a

a = String.new("Hello")
puts a

a = "Hello "
b = "World"
puts a + b

a = "Hooray! "
puts a * 3

a = "Edward"
puts a[0]   # This will print "E"
puts a[0,4]  # This will print "Edwa"
