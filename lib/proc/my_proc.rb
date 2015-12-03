# Proc就是使块对象化的类
# Proc对象将处理内容、变量等环境保存起来 称为闭包

class MyProc

  def hello1(name)
    h1 = Proc.new { |name| "Hello, #{name}" }
    h1[name]
  end

  def hello2(name)
    h2 = proc { |name| "Hello, #{name}" }
    h2.call(name)
  end

  def double(*args)
    d = Proc.new do |*as|
      as.map { |i| i * 2 }
    end
    d[*args]
  end

  def power_of(n)
    lambda do |x|
        return  x ** n
    end
  end

end