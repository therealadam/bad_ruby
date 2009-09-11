$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
require 'bad_ruby/blame'

class Foo
  extend BlameTheCompiler
  
  def happy
    'Happy!'
  end
  
end

puts (Foo.new.methods - Object.new.methods).inspect
