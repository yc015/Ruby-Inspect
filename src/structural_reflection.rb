#!/usr/bin/ruby -w

str_hello = "Hello world!" # str_hello is a String object

str_hello.define_singleton_method(:my_class_name) do
  "My class name is String"
end

str_hello.my_class_name # This line will return "My class name is String"