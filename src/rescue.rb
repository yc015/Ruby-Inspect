#!/usr/bin/ruby -w

begin
  "Hello".even?                             # String does not have even? method
rescue TypeError
  puts "Wrong type"                         # First catch/rescue
rescue NoMethodError
  puts "No method even for String Hello"    # Second catch/rescue
ensure
  puts "Finally, String is not even or odd" # Always execute
end
