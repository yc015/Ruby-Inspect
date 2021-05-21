# Installation of Ruby
To run the programs provided in this textbook, you need to install the Ruby with version of 2.7.x on your machine. At the time when this textbook is written, the stable release of Ruby 2.7.x series is [Ruby 2.7.2](https://www.ruby-lang.org/en/news/2020/10/02/ruby-2-7-2-released/). However, the latest stable version of the Ruby 2.7.x series may also works with the provided example codes.

There are various tools for installing Ruby on different Operating Systems. We recommend you to read the [Ruby's official documentation](https://www.ruby-lang.org/en/documentation/installation/) about how to install the Ruby. 

For users with Unix-like systems, Ruby may have already been installed on your machine. You may check if Ruby has been installed using command:  
    
    $ ruby -v
    
 For Windows OS users, we recommend you to install the Ruby using [RubyInstaller](https://rubyinstaller.org/). After installing Ruby with RubyInstaller, you can check the version of installed Ruby using the same command as above. 

# Your First Ruby Program: HelloWorld.rb

Once you have installed the Ruby on your machine, you are good to go for your first Ruby Program.bLet's start from the most classic program that every beginner will write.

**HelloWorld.rb**
```ruby
#!/usr/bin/ruby -w

# To run the Ruby program, ensure you have install the Ruby in your environment
# To run the program
# $ ruby hello_world.rb
puts "Hello World!";
=begin
This is a block comment
The output of this program:
$ Hello World!
=end
```

To run this program in terminal, make sure your HelloWorld.rb file is in your current working directory and run with command `$ ruby HelloWorld.rb`.

The source codes of every example Ruby program in this textbook can be found in the [src/](../src) directory of the textbook's [GitHub Repository](https://github.com/yc015/Ruby-Inspect).

The source code of **HelloWorld.rb** can be found here: [src/HelloWorld.rb](../src/HelloWorld.rb).