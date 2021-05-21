# Type Coercion

For some methods in Ruby will implicitly convert the passing argument into the parameter’s type. For example:

```ruby
float_a = 3.4
str_b = "Hello! "   
puts str_b * float_a
```

The codes above will print “Hello! Hello! Hello! ”. The multiplication accepts one String and one integer. However, if we are passing the Float object float_a, the multiplication * method will call the .to_i method of float_a to convert the float_a into an integer object.

The implicit conversion in Ruby is done by the calling method. The calling method will implicitly convert the passing objects if objects have the required conversion method, to_i for Integer, to_s for String, to_a for Array, or to_h for Hash. 

We can also explicitly cast an object by calling its to_i, to_f, to_s, to_a, or to_h methods. For example:

```ruby
float_a = 3.4
puts float_a.to_i.to_s 
```

The codes above will print 3. We first explicitly convert a Float object into an Integer and object, and we then convert the Integer object into a String object.

The code snippets can be found here: [https://github.com/yc015/Ruby-Inspect/blob/main/src/type_coercion.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/type_coercion.rb)

Reference:  
[1] [https://docs.ruby-lang.org/en/3.0.0/doc/implicit_conversion_rdoc.html](https://docs.ruby-lang.org/en/3.0.0/doc/implicit_conversion_rdoc.html) Ruby’s Official Documentation for Implicit Conversion