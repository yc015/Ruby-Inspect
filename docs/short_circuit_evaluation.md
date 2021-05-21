# Short Circuit Evaluation

Ruby use short circuit evaluation for its logical operators [1].

**short_circuit_evaluation.rb**
```ruby
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
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/short_circuit_evaluation.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/short_circuit_evaluation.rb)

The codes above will print:  

    This is first True
    Short circuit
    This is a false

From the outputs, Ruby uses the short circuit evaluation for both and and or.

Reference:  
[1] [https://blog.revathskumar.com/2013/05/short-circuit-evaluation-in-ruby.html](https://blog.revathskumar.com/2013/05/short-circuit-evaluation-in-ruby.html) Short Circuit Evaluation in Ruby - Revath S. Kumar
