#!/usr/bin/ruby -w

original_salad = ["Ham", "Potatoes", "Lettuce"]
copy_salad = original_salad.clone
copy_salad[0].chop! # Remove the last character from String "Ham" in copy_salad

puts copy_salad.to_s
puts original_salad.to_s
