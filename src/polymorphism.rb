#!/usr/bin/ruby -w

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
