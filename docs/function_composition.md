# Function composition

Ruby supports function composition of different Proc objects using `<<` and `>>` operator, and a Proc object encapsulates a function [1].

**function_composition.rb**
```ruby
func_1 = proc {|num| num + 2}
func_2 = proc {|num| num / num}
puts (func_1 << func_2).call(5)  # This is equivalent to the composition func_1(func_2(5))
puts (func_1 >> func_2).call(5)  # This is equivalent to the composition func_2(func_1(5))
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/function_composition.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/function_composition.rb)

The codes above will print:  

    3
    1

The codes above use operator `<<` and `>>` to make function composition `func_1(func_2(x))` and `func_2(func_1(x))` where x is the input argument, 5 in this case.

Reference:  
[1] [https://medium.com/rubycademy/function-composition-in-ruby-d9ca64f65abb](https://medium.com/rubycademy/function-composition-in-ruby-d9ca64f65abb) Function Composition in Ruby - Mehdi Farsi
