# Possible Memory Hazard

Everything in Ruby is an object and Ruby uses the Garbage collection [1], thus the memory leak, dangling reference, and double deallocation are not possible in Ruby. However, the aliasing and aliasing side effects are possible in Ruby.

**memory_hazard.rb**
```ruby
original = "Hello"
puts original     # This will print "Hello"
original_alias = original   # Create an alias for String original
original_alias.chop!   # chop! method removes the last character in a String: "Hello" => "Hell" [2]
puts original          # This will print "Hell" because of aliasing side effect from the above line
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/memory_hazard.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/memory_hazard.rb)

The codes above will print:  
    
    Hello
    Hell
    
We create an alias for the original String object. When we change the alias object original_alias using chop! [2], the original String object is also affected as an aliasing side effect.

References:  
[1] [https://stackify.com/how-does-ruby-garbage-collection-work-a-simple-tutorial/](https://stackify.com/how-does-ruby-garbage-collection-work-a-simple-tutorial/) How Does Ruby Garbage Collection Work - Stackify  
[2] [https://ruby-doc.org/core-3.0.0/String.html#method-i-chop-21](https://ruby-doc.org/core-3.0.0/String.html#method-i-chop-21) Ruby’s Official Documentation for the chop! method of String class.
