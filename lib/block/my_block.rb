# 块的调用方法如：
# 对象.方法名(参数列表) do |块变量|
#   希望处理的循环
# end
# 或
# 对象.方法名(参数列表) { |块变量|
#   希望处理的循环
# }

class MyBlock

  def total(from, to)
    result = 0
    from.upto(to) do |num|
      if block_given?
        result += yield(num)
      else
        result += num
      end
    end
    result
  end

  BLOCK_OBJECT = Proc.new do |name|
    "Hello, #{name}"
  end

  # &block参数为Proc参数,如果方法没有传入块,Proc参数就为nil
  def total2(from, to, &block)
    result = 0
    from.upto(to) do |num|
      if block
        result += block.call(num)
      else
        result += num
      end
    end
    result
  end

  # 块内可以访问块外变量,块外不能访问块内变量
  # ruby定义了块变量后加; 来区分块外变量
  def block_variable
    x = y = result = 0
    ary = [1, 2, 3]
    ary.each do |x|
      result += x
    end
    result
  end

end

