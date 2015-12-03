require_relative '../spec_helper'

describe 'MyProc' do

  let (:my_proc) { MyProc.new }

  it 'should do something' do
    expect(my_proc.hello1('Bob')).to eq 'Hello, Bob'
    expect(my_proc.hello2('Jay')).to eq 'Hello, Jay'
    expect(my_proc.double(1, 2, 3)).to eq [2, 4, 6]
    expect(my_proc.power_of(3)[2]).to eq 8
  end

end