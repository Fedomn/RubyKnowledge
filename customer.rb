class Customer
  CONSTANT = 0
  @@count_customer = 0

  def initialize(name)
    @name = name
    @@count_customer += 1
  end

  def show_detail
    puts "name is , #{get_name}"
  end

  def get_name
    @name
  end

  def self.show_total
    puts "Total number of customers: #@@count_customer"
  end

  private :get_name

end


a = Customer.new('frankA')
b = Customer.new('frankB')
a.show_detail
b.show_detail
Customer.show_total

puts '--------------------------------------------------------------------------------------------'

puts Customer::CONSTANT
puts self
puts nil
puts __FILE__
puts __LINE__





