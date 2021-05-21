# Parameter Passing

Ruby uses the pass by value for parameter passing, but the passing value is the reference to objects [1].

**parameter_passing.rb**
```ruby
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
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/parameter_passing.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/parameter_passing.rb)

The codes above will print:  
    
    String
    Real Modified String

In the example above, the argument `str` passed to the function `change_string()` is a copy of reference to the `str_a`. Assigning an address of new string object `"Modified String"` to the argument `str` won't affect the content on the original address, address of `str_a`, that `str` previously points to.

In function `change_string_insert()`, we invoke a method of the string object that `str` points to, and that method makes an inplace change to the string object. Thus, we can see the content of `str_a` is changed from `"String"` to `"Real Modified String"`. 

Reference:  
[1] [https://mixandgo.com/learn/is-ruby-pass-by-reference-or-pass-by-value](https://mixandgo.com/learn/is-ruby-pass-by-reference-or-pass-by-value) Is Ruby pass-by-reference or pass-by-value? - Mix & Go
