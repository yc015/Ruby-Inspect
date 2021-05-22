#!/usr/bin/ruby -w

def hello_world
  a = "Hello World"
end

ret_val = hello_world
puts ret_val

ret_val = puts "Hi!"
puts ret_val

def return_four_values
    return 1, 2.2, true, "Hello"
end

ret_val = return_four_values
puts ret_val.to_s, "Return class: " + ret_val.class.to_s
