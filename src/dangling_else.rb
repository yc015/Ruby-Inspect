#!/usr/bin/ruby -w

x = -3
if x.odd?
  if x >= 0
    puts "x is a positive odd integer"
  else
    puts "x is a negative odd integer"
  end
end

x = -3
if x.odd?
  if x >= 0
    puts "x is a positive odd integer"
  end
else
  puts "x is a negative odd integer"
end
