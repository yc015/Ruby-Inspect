#!/usr/bin/ruby -w

def change_string(str)
  str = "Modified String"
end

str_a = "String"
change_string(str_a)
puts str_a  # Print "String"

def change_string_insert(str)
  str.insert(0, "Real Modified ")
end

change_string_insert(str_a)
puts str_a  # Print "Real Modified String"