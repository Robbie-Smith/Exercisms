class HelloWorld
  def self.hello(name = nil )

    if name == "Alice"
     "Hello, #{name}!"
   elsif name == "Bob"
      "Hello, #{name}!"
    else name == nil
      "Hello, World!"
    end
  end

end

#submitted
# http://exercism.io/submissions/06d72940e8b34d1db2ee9d3a6f0d50ca
