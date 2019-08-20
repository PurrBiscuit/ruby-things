# Need to require_relative here to make the Test2 class
# available to Test1 to inherit from the test2.rb file
require_relative 'test2'

# inherit the Test2 class into the Test1 class to make
# the methods from Test2 available to Test1 (and as a result,
# they will be available to the Test class since it inherits
# the Test1 class)
class Test1 < Test2
  # define a hello_test1 method that will be 
  # available to the Test class via inheritance
  def hello_test1
    puts "hello from Test1 class"
  end
end