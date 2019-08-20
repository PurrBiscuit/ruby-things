# Need to require_relative here to make the Test1 class
# available to Test to inherit from the test1.rb file
require_relative 'test1'

# inherit the Test1 class into the Test class to make
# the methods from Test1 available to Test
class Test < Test1
  # a simple hello method that is defined directly in the Test class
  def hello
    puts "hello from Test class"
  end

  # an example of the hello_test1 method from the Test1 class getting overwritten
  # with a hello_test1 method in this class directly; calling super at the end
  # of the method will call the original hello_test1 method from the Test1 class
  # after the lines from this hello_test1 method have run as well
  def hello_test1
    puts "hello from Test class"
    super
  end
end

# instantiate a new Test object and call it test
test = Test.new

# call the hello method that was defined directly in the Test class
test.hello

# call the hello_test1 method that was defined in the Test1 class
# and overwritten in the Test class with the call to super at the end
test.hello_test1

# call the hello_test2 method that is defined in the Test2 class; the Test2 class
# is inherited in the Test1 class and the Test1 class is inherited in the Test class
# so any Test objects have access to the methods in the Test2 class as a result
test.hello_test2