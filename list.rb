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

  def size
    size = 0
    evaluated_node = @first_node
    while evaluated_node.respond_to?(:data)
      size += 1
      evaluated_node = evaluated_node.next_node
    end
    size
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

  def remove_begining
    removed_begining = @first_node
    @first_node = @first_node.next
    removed_begining
  end
end
