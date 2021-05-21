#!/usr/bin/ruby -w

def greeting
  puts "Hello"
  return "My name is Edward"
end

def say_hello(str_message)
  puts "Say Hello!"
  puts str_message
end

say_hello(greeting)