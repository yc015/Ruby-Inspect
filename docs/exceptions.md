# Exceptions

Ruby has exceptions [1]. Similar to the finally in Java, Ruby has an ensure which will always execute regardless of whether an exception is raised [1]. The try block, which is begin and end in Ruby, can have multiple catch blocks, which are rescue blocks in Ruby.

For example:

**rescue.rb**
```ruby
begin
  "Hello".even?                             # String does not have even? method
rescue TypeError
  puts "Wrong type"                         # First catch/rescue
rescue NoMethodError
  puts "No method even for String Hello"    # Second catch/rescue
ensure
  puts "Finally, String is not even or odd" # Always execute
end
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/rescue.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/rescue.rb)

The codes above will print:  

    No method even for String Hello
    Finally, String is not even or odd

We can create our own exceptions. For example:  

**custom_exceptions.rb**
```ruby
class MyCustomError < StandardError
  attr_reader :reason
  def initialize(reason)
    @reason = reason
  end
end

raise MyCustomError.new("My Error!")
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/custom_exceptions.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/custom_exceptions.rb)

The codes above will raise MyCustomError.

Reference:  
[1] [https://www.tutorialspoint.com/ruby/ruby_exceptions.htm](https://www.tutorialspoint.com/ruby/ruby_exceptions.htm) Ruby Exceptions - Tutorialspoint
