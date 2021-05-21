#!/usr/bin/ruby -w

original = "Hello"
puts original     # This will print "Hello"
original_alias = original   # Create an alias for String original
original_alias.chop!   # chop! method removes the last character in a String: "Hello" => "Hell" [2]
puts original          # This will print "Hell" because of aliasing side effect from the above line