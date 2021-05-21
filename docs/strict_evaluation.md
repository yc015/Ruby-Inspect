# Strict vs Non-strict Evaluation

Ruby uses the strict evaluation by default [1].

**strict_evaluation.rb**
```ruby
def greeting
  puts "Hello" 
  return "My name is Edward"
end

def say_hello(str_message)
  puts "Say Hello!"
  puts str_message
end

say_hello(greeting)
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/strict_evaluation.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/strict_evaluation.rb)

The codes above will print:  

    Hello
    Say Hello!
    My name is Edward

The method greeting is evaluated when it is passed as an argument to the say_hello method. Thus, the program first evaluates the call of greeting method, which prints “Hello” and returns “My name is Edward”. After the evaluation of the argument, the program enters the say_hello method and prints “Say Hello!” and then prints the str_message returned by greeting. 

Reference:  
[1] [https://www.informit.com/articles/article.aspx?p=2301259](https://www.informit.com/articles/article.aspx?p=2301259) Argument Passing in Ruby - InformIT
