require 'spec_helper'

describe SpecHelper do

  it "creates a list of nodes when given an array of values" do
    create_node['dog', 'cat', 'bird', 'fish'].should == Node.new('dog', Node.new('cat', Node.new('bird', Node.new('fish'))))
  end

end
