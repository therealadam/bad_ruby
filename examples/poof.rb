$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
require 'bad_ruby/schroedinger'

10.times do |i|
  # TODO: inherit from Schroedinger's box and use that to track classes
  klass = Class.new
  name = "Foo#{i}".to_sym
  NS.const_set(name, klass)
  $klasses << name
end

Schroedinger.start

10.times { |i| eval("NS::#{$klasses[i]}.new"); sleep(0.5) }
