require_relative 'spec_helper'

describe MyClass do

  let (:jay) { MyClass.new('Jay') }
  let (:bob) { MyClass.new('Bob') }
  let (:new_name) { 'new_name' }

  it 'should say hello success' do
    expect(MyClass.say_hello('Jay')).to eq 'Jay said Hello.'
  end

  it 'should greet string success' do
    expect(bob.greet).to eq 'Hi, I am Bob'
  end

  it 'should set name success' do
    expect(jay.name).to eq 'Jay'
    jay.name = new_name
    expect(jay.name).to eq new_name
  end

  it 'should get version success' do
    expect(MyClass::VERSION).not_to eq nil
  end

end
