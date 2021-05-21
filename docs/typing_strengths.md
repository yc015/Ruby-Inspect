# Typing Strength

Ruby is strongly typed.  
The object instance created in Ruby is bound to that class (type) but we can explicitly cast the objects into another class (type).

```ruby
int_a = 2
int_a.nan? # error
```

The code above will cause an error.  
The method nan? is not implemented for Integer class.  
Since Ruby is strongly typed, the Integer object int_a will not be casted to a float object unless explicitly calling int_a.to_f. Thus, int_a.nan? raises an error as the method is not implemented.  

```ruby
int_a.to_f.nan? # return false
```

The code above will return false.  
We can explicitly convert an Integer object into a Float object. The above line will run, and return false since 2.0 is a valid floating point number.  

``` ruby
float_b = 2.0
float_b.even? # error: The method even? Is not implemented for Float class
```

The code above will cause an error as even? is not implemented for Float class.

```ruby
float_b.to_i.even? # return true
```

The code above will return true.  
We can convert the Float object explicitly into an Integer object using to_i method. The line above will run, and return true as 2 is even.  

References:  
[1] [http://www.rubyfleebie.com/2007/07/09/ruby-is-dynamically-and-strongly-typed/](http://www.rubyfleebie.com/2007/07/09/ruby-is-dynamically-and-strongly-typed/) Ruby is Dynamically and Strongly Typed - Ruby Fleebie
