# Deep vs Shallow copying of objects

Ruby makes the shallow copy of objects by default. For example, we can create a shallow copy of an array using its clone method.

**shallow_copy.rb**
```ruby
original_salad = ["Ham", "Potatoes", "Lettuce"]
copy_salad = original_salad.clone
copy_salad[0].chop! # Remove the last character from String "Ham" in copy_salad

puts copy_salad.to_s 
puts original_salad.to_s
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/shallow_copy.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/shallow_copy.rb)

The codes above will print:  

    ["Ha", "Potatoes", "Lettuce"]
    ["Ha", "Potatoes", "Lettuce"]

The first String element `"Ham"` in both original and copied arrays are changed. Thus, Ruby creates a shallow copy of the array, and there are copied references to the same String objects inside the copied array.

We can make a deep copy in Ruby using the Marshal module’s load and dump functions.

**deep_copy.rb**
```ruby
original_salad = ["Ham", "Potatoes", "Lettuce"]
copy_salad = Marshal.load(Marshal.dump(original_salad))
copy_salad[0].chop! # Remove the last character from String "Ham" in copy_salad

puts copy_salad.to_s 
puts original_salad.to_s
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/deep_copy.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/deep_copy.rb)

The codes above will print:  

    ["Ha", "Potatoes", "Lettuce"]
    ["Ham", "Potatoes", "Lettuce"]

Using the Marshal.load and Marshal.dump, we create a deep copy of the array. The first element of the `original_salad` array is unaffected when we change its deep copy `copy_salad`.

References:  
[1] [https://www.rubyguides.com/2018/11/dup-vs-clone/](https://www.rubyguides.com/2018/11/dup-vs-clone/) Dup vs Clone in Ruby: Understanding The Differences - Ruby Guides  
[2] [https://medium.com/rubycademy/the-complete-guide-to-create-a-copy-of-an-object-in-ruby-part-ii-cd28a99d58d9](https://medium.com/rubycademy/the-complete-guide-to-create-a-copy-of-an-object-in-ruby-part-ii-cd28a99d58d9) The Complete Guide to Create a Copy of an Object in Ruby: Part II - Mehdi Farsi
