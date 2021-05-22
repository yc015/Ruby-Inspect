# Polymorphism

Ruby supports the Inclusion, ad hoc (operator take different forms), and parametric polymorphism (optional parameters).

**polymorphism.rb**
```ruby
list = [1, 2.2, 3.6] 

def print_hello_add_one(list, end_at_index=2) # Parametric polymorphism
  cur_index = 0
  for item in list
    if cur_index >= end_at_index
      break
    end
    puts "Hello" * item.floor # Inclusion polymorphism
    puts item.to_i * 2        # Ad hoc polymorphism
    cur_index +=1
  end
end
print_hello_add_one(list)
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/polymorphism.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/polymorphism.rb)

The codes above will print:  

    Hello
    2
    HelloHello
    4
    
In the codes above, we have parametric polymorphism which we allow the parameter end_at_index of function print_hello_add_one to be optional. We also have ad hoc polymorphism which multiplication operator * can take two integers or a String and an Integer. Finally, we have the inclusion polymorphism [1]. Since Ruby is duck typing, we can call the floor and to_i methods on both Float and Integer objects.

References:  
[1] [https://www.geeksforgeeks.org/polymorphism-in-ruby/](https://www.geeksforgeeks.org/polymorphism-in-ruby/) Polymorphism in Ruby - GeeksforGeeks
