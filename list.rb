require File.join(File.dirname(__FILE__), 'node')

class List
  
  def initialize(first_node = nil)
    @first_node = first_node
  end

  def beginning_node
    @first_node		
  end

  def each
    evaluated_node = beginning_node
    while evaluated_node.respond_to?(:data)
      yield evaluated_node
      evaluated_node = evaluated_node.next
    end
    return self
  end

  def size
    size = 0
    node_to_be_counted = beginning_node
    while node_to_be_counted.respond_to?(:data)
      size += 1
      node_to_be_counted = node_to_be_counted.next
    end
    size
  end

  def insert_beginning(new_beginning)
    if @first_node.respond_to?(:data)
      pushed_down_node = @first_node
      @first_node = new_beginning
      new_beginning.next_node = pushed_down_node
    else
      @first_node = new_beginning
    end
  end

  def remove_beginning
    removed_beginning = @first_node
    @first_node = @first_node.next
    removed_beginning
  end
end
