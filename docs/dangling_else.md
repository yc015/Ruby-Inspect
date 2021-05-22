# Dangling Else

Dangling else is not a problem in Ruby. Ruby avoids the ambiguity caused by dangling else using the `end` statement to specify the structure of nested if-else conditionals [1].

**dangling_else.rb**
```ruby
x = -3
if x.odd?
  if x >= 0
    puts "x is a positive odd integer"  
  else
    puts "x is a negative odd integer"
  end
end
```

The code above will print:  

    "x is a negative odd integer"

**dangling_else.rb**
```ruby
x = -3
if x.odd?
  if x >= 0
    puts "x is a positive odd integer"
  end  
else
  puts "x is a negative odd integer"
end
```

The code above does not print anything but return `nil` since `-3` is odd but `x` is negative.

Ruby avoids the ambiguity of the dangling else by specifying the structure of nested if-else using end statement.

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/dangling_else.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/dangling_else.rb)

Reference:  
[1] [https://www.tutorialspoint.com/ruby/ruby_if_else.htm](https://www.tutorialspoint.com/ruby/ruby_if_else.htm) Ruby if else - Tutorialspoint