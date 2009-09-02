module BlameTheCompiler
  
  def method_added(name)
    if rand(3) != 1
      undef_method(name)
    end
  end
  
end

class Foo
  extend BlameTheCompiler
  
  def happy
    'Happy!'
  end
  
end

(Foo.new.methods - Object.new.methods) # => []

# MethodRoulette (above)
# Schroedinger's Class (undefine classes in a separate thread)
# Rage (Create common classes with odd ancestors - User Account Person etc.)
