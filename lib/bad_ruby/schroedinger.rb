$klasses = []
Thread.abort_on_exception = true

module NS; end

module Schroedinger
  
  def self.kill_class
    klass = $klasses[rand($klasses.length)]
    puts "Killing #{klass}"
    NS.send(:remove_const, klass)
  end
  
  def self.start
    puts "Schroedinger has started his experiment"
    Thread.new do
      loop do
        # sleep(rand(60 * 5))
        sleep(1)
        puts 'Running the experiment'
        Schroedinger.kill_class
      end
    end
  end
  
end
