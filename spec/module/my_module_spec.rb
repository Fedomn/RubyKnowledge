require_relative '../spec_helper'

describe 'MyModule' do

  # include module 定义了实例方法
  it 'should include module success' do
    expect(C.new.hello('Bob')).to eq 'Hello, Bob'
  end

  # extend module 定义了类方法
  it 'should extend module success' do
    str = 'extend'
    str.extend(MyModule)
    expect(str.hello('Bob')).to eq 'Hello, Bob'
  end

end