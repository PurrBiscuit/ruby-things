require_relative 'test1'

class Test < Test1
  def hello
    puts "hello from Test class"
  end

  def hello_test1
    puts "hello from Test class"
    super
  end
end

test = Test.new
test.hello
test.hello_test1
test.hello_test2