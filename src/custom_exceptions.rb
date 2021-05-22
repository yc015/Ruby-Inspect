#!/usr/bin/ruby -w

class MyCustomError < StandardError
  attr_reader :reason
  def initialize(reason)
    @reason = reason
  end
end

raise MyCustomError.new("My Error!")
