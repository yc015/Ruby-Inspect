#!/usr/bin/ruby -w

$global_int = 10

def inner
  puts $global_int
end

def outer
  global_int = 0
  inner
end

outer # prints 10