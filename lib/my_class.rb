class MyClass

  @@init_count = 0

  VERSION = '1.0'

  attr_accessor :name

  def initialize(myname = 'Ruby')
    @name = myname
    @@init_count += 1
  end

  # 调用方法时，如果省略接受者，ruby会默认把self作为方法的接受者
  def greet
    "Hi, I am #{name}"
  end

  # 类方法
  def self.say_hello(name)
    "#{name} said Hello."
  end

  def self.init_count
    @@init_count
  end

end