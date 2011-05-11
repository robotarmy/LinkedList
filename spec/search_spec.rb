require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'list')

describe List do

  it "finds the first node which has the value 'a'" do
    list = List.new(Node.new('elephant', Node.new('a', Node.new('antelope', Node.new('a', Node.new('tiger'))))))
    list.first('a').the_next.data.should == 'antelope'
  end

  it "finds all nodes which have the value 'z'" do
    list = List.new(Node.new('anteater', Node.new('z', Node.new('z', Node.new('platypus', Node.new('z'))))))
    zeds = ['z', 'z', 'z']
    list.all('z').should be_an_instance_of(Array)
    i = 0
    list.all('z').each do |x|
      x.data.should == (zeds[i])
      i += 1
    end
    list.all('z').length.should == 3
  end

end
