# Using Default Parameters in Ruby

Ruby allows default parameters in methods/functions (all functions in Ruby are methods because everything in Ruby is an object) [1].

**default_parameters.rb**
```ruby
def print_my_name(first_name, last_name="Chen")
	puts first_name + " " + last_name
end

print_my_name("Edward") # This will print "Edward Chen" and return nil. (Methods in Ruby will always return something)
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/default_parameters.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/default_parameters.rb)

The codes above will print:  

    Edward Chen
    
The `print_my_name()` uses the default parameter `"Chen"` for last_name.

References:  
[1] [https://docs.ruby-lang.org/en/2.0.0/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments](https://docs.ruby-lang.org/en/2.0.0/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments) Ruby’s Official Documentation about Default Positional Arguments