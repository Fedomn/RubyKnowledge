class RubySugar
  def test_case(id)
    case id
      when 0..5
        puts 'one'
      when 6..10
        puts 'two'
      else
        puts 'no'
    end
  end

  def test_method(*val)
    val.each do |n|
      print n
    end
  end
end

a = 1
b = 2
a , b = b ,a
print a, b, "\n"

puts 'debug' if true
puts 'debug' unless false

RubySugar.new.test_case(5)
RubySugar.new.test_case(10)
RubySugar.new.test_case(20)

RubySugar.new.test_method(1,2,4,5)



