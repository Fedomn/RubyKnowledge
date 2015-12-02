class MyMethod

  def self.default_name(name='Ruby')
    name
  end

  def self.get_args(x: 0, y: 0, z: 0, **args)
    [x, y, z, args]
  end

  def self.hash_args(arg1, arg2)
    [arg1, arg2]
  end

end
