#!/usr/bin/ruby -w

original_salad = ["Ham", "Potatoes", "Lettuce"]
copy_salad = Marshal.load(Marshal.dump(original_salad))
copy_salad[0].chop! # Remove the last character from String "Ham" in copy_salad

puts copy_salad.to_s
puts original_salad.to_s