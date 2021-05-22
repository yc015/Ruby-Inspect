# Return Value in Ruby

Methods in Ruby always return exactly one object, and there is no void return even if we don’t use the return statement explicitly [1].

```ruby
def hello_world
  a = "Hello World"
end

ret_val = hello_world
puts ret_val
```

The codes above will print:  

    "Hello World"
     
Even if we don't call return explicitly at the end of hello_world function, Ruby will use the return value from the last evaluated statement as the return value of the function [1], which is the return value of `a = "Hello World"`. 

```ruby
ret_val = puts "Hi!"
puts ret_val
```

The codes above will print:  

    Hi!
    nil
    
In Ruby, `nil` is an object so the return value of puts is not void.  

The multiple return values of a function will be grouped into one array since Ruby methods always return exactly one object.

```ruby
def return_four_values
    return 1, 2.2, true, "Hello"
end

ret_val = return_four_values
puts ret_val.to_s, "Return class: " + ret_val.class.to_s
```

The codes above will print:  

    [1, 2.2, true, "Hello"]
    Return class: Array
    
The multiple return values are grouped into one Array object.

The code snippets can be found here: [https://github.com/yc015/Ruby-Inspect/blob/main/src/return_value.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/return_value.rb)

References:  
[1] [http://ruby-for-beginners.rubymonstas.org/writing_methods/return_values.html](http://ruby-for-beginners.rubymonstas.org/writing_methods/return_values.html) Return values - Ruby for Beginners