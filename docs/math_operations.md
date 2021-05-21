# Math Operations on Numbers

Ruby supports non-standard math operations on Integer objects, such as `>>` shift bit to right, `<<` shift bit to left, `&` bitwise `and`, and `|` bitwise `or` [1].

**math_operations.rb**
```ruby
bit_a = 0b00001111   # In decimal, bit_a = 15
puts bit_a
bit_a = bit_a << 2 # In binary, bit_a = 0b00111100. In decimal, bit_a = 60.
puts bit_a
bit_a = bit_a >> 1  # In binary, bit_a = 0b00011110. In decimal, bit_a = 30
puts bit_a
bit_a = bit_a & 0b11 # In binary, bit_a = 0b00000010. In decimal, bit_a = 2
puts bit_a
bit_a = bit_a | 0b11 # In binary, bit_a = ob00000011. In decimal, bit_a = 3
puts bit_a
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/math_operations.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/math_operations.rb)

The codes above will print:  

    15
    60
    30
    2
    3
    
In Ruby, we can do bitwise operation on the integer using operators such as `>>`, `<<`, `&`, and `|`.

Reference:  
[1] [https://ruby-doc.org/core-2.5.0/Integer.html](https://ruby-doc.org/core-2.5.0/Integer.html) Ruby’s Official Documentation for Integer Class.