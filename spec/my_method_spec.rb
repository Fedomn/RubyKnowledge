require_relative 'spec_helper'

describe MyMethod do

  it 'should set default name success' do
    expect(MyMethod.default_name).to eq 'Ruby'
  end

  it 'should get args success' do
    expect(MyMethod.get_args(x: 2, y: 3)).to eq [2, 3, 0, {}]
  end

  it 'should get hash args success' do
    expect(MyMethod.hash_args(1, a: 1, b: 2)).to eq [1, {a: 1, b: 2}]
  end

end


