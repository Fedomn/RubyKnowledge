require_relative '../spec_helper'

describe 'MyBlock' do

  it 'should block work' do
    expect(MyBlock.new.total(1, 10)).to eq 55
    expect(MyBlock.new.total(1, 10) { |num| num**2 }).to eq 385
  end

  it 'should block arg work' do
    expect(MyBlock.new.total2(1, 10)).to eq 55
    expect(MyBlock.new.total2(1, 10) { |num| num**2 }).to eq 385
  end

  it 'should block object work' do
    expect(MyBlock::BLOCK_OBJECT.call('Jay')).to eq 'Hello, Jay'
  end

  it 'should block variable work' do
    expect(MyBlock.new.block_variable).to eq 6
  end

end