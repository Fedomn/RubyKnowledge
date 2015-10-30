class HelloWorld
  def name(name)
    puts "hello,#{name}"
  end
end

a  = HelloWorld.new
a.name('world')

puts self.class

BEGIN{
  puts '123'
}

ary = ['one', 1, 123.123, 'two']
ary.each do |i|
  puts i
  puts i.class
end


has = {:red => 123, :bak =>'bak'}
has.each do |key, value|
  print key, ' is ', value,"\n"
end


(0..10).each do |n|
  print n
end

