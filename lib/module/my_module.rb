module MyModule

  def hello(name)
    "Hello, #{name}"
  end

end

class C
  include MyModule
end


