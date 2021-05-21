# Scope in Ruby: Dynamic or Static Score?

Ruby uses the Static Scope [1].

**scope.rb**
```ruby
$global_int = 10

def inner
  puts $global_int
end
 
def outer
  global_int = 0
  inner
end

outer # prints 10
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/scope.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/scope.rb)

The codes above will print 10.  
The inner function will print the global variable global_int instead of local variable global_int in the outer function call. Thus, Ruby is using the static scope.

References:  
[1] [https://blog.appsignal.com/2019/01/08/ruby-magic-bindings-and-lexical-scope.html](https://blog.appsignal.com/2019/01/08/ruby-magic-bindings-and-lexical-scope.html) Binding and Lexical Scope in Ruby - AppSignal Blog
