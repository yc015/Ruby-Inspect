#!/usr/bin/ruby -w

func_1 = proc {|num| num + 2}
func_2 = proc {|num| num / num}
puts (func_1 << func_2).call(5)  # This is equivalent to the composition func_1(func_2(5))
puts (func_1 >> func_2).call(5)  # This is equivalent to the composition func_2(func_1(5))
