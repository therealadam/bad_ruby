module BlameTheCompiler
  
  def method_added(name)
    if rand(3) != 1
      undef_method(name)
    end
  end
  
end
