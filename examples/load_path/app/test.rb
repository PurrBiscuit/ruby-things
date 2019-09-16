puts $LOAD_PATH

# Can also use the following __FILE__ syntax
# explanation of that can be found here:
# https://stackoverflow.com/questions/4474918/file-expand-path-gemfile-file-how-does-this-work-where-is-the-fil

# $LOAD_PATH.push(File.expand_path("../../lib", __FILE__))

$LOAD_PATH.push(File.expand_path("../lib", __dir__))
puts "-------------------------"
puts $LOAD_PATH

puts
puts "-------------------------"
puts

require "a"
include A

A.say("whats up with load paths?")