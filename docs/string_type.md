# The String Type

It is always a question: whether the String type is primitive in a programming language. Since everything in Ruby is an object, there is no primitive type, and String is a built-in class Ruby [1].

We can instantiate a String objects by either:

```ruby
a = "Hello"
```

or using the constructor of String class:

```ruby
a = String.new("Hello")
```

For math operations, we can do additions between String objects

```ruby
a = "Hello "
b = "World"
puts a + b  
```

The codes above will print:  
    
    “Hello World”

We can also do multiplication between String and Integer:

```ruby
a = "Hooray! "
puts a * 3
```

The codes above will print:  

    “Hooray! Hooray! Hooray! ”

We can index a String object and take a substring from it.

```ruby
a = "Edward"
puts a[0]   # This will print "E"
puts a[0,4]  # This will print "Edwa"
```

The codes above will print:  
    
    E
    Edwa
    
There is not a concept of terminating character ‘\0’ like that in the programming language C.

The code snippets in this chapter can be found here: [https://github.com/yc015/Ruby-Inspect/blob/main/src/string_type.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/string_type.rb)

Reference:  
[1] [https://ruby-doc.org/core-3.0.0/String.html](https://ruby-doc.org/core-3.0.0/String.html) Ruby’s Official Documentation for String
