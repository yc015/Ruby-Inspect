# Multidimensional Arrays

There are no limits of dimensionality for multidimensional arrays [1]. For example, we can make a high-dimensional array using the codes below:

**multidimensional_arrays.rb**
```ruby
a = Array.new(3, 4)  # a = [4, 4, 4]
b = Array.new(2, 4)  # b = [4, 4]
c = [a, b]                   # c = [[4, 4, 4], [4, 4]] 
d = Array.new(2, c)   # d = [[[4, 4, 4], [4, 4]],  [[4, 4, 4], [4, 4]]]
puts d 
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/multidimensional_arrays.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/multidimensional_arrays.rb)

The codes above will print:  

    [[[4, 4, 4], [4, 4]],  [[4, 4, 4], [4, 4]]]

The array c is jagged where each row of the array c has a different length.

We can access the fields of an array using integer index:  

```ruby
a = Array.new(3, 4)
puts a[1] # print 4
```

The codes above will print `4` which is the second element in the array a.

Reference:  
[1] [https://learn.co/lessons/nested-arrays-ruby](https://learn.co/lessons/nested-arrays-ruby) Nested Arrays Ruby - Learn.co
