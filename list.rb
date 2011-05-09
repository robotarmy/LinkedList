require File.join(File.dirname(__FILE__), 'node')

class List
  attr_accessor :first_node
  
  def initialize(first_node = nil)
    @first_node = first_node
  end

  def begining_node
    @first_node		
  end

  #  move through the list running 'yield' on each element
  #  so that one can iterate through a list: 
  #
  #  List.new(Node.new(10)).each do |node|
  #    puts node.data
  #  end
  #
  def each
    return self
  end

  #
  # How long is the list?
  # 
  def size
    # return length
  end

  def insert_begining(new_begining)
    if @first_node.respond_to?(:data)
      pushed_down_node = @first_node
      @first_node = new_begining
      new_begining.next_node = pushed_down_node
    else
      @first_node = new_begining
    end
  end

  # Remove the node that is begining the list
  #
  def remove_begining
    # return removed node
  end
end
