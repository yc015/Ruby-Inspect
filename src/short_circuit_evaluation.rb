#!/usr/bin/ruby -w

def this_is_true
  puts "This is first True"
  return true
end

def this_is_second_true
  puts "This is second True"
  return true
end

def this_is_false
  puts "This is a false"
  return false
end

# Test the short circuit evaluation for `or`
if this_is_true or this_is_second_true
  puts "Short circuit"
end

# Test the short circuit evaluation for `and`
if this_is_false and this_is_true
  puts "Hi!"
end