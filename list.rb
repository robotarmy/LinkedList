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
      evaluated_node = evaluated_node.the_next
    end
    return self
  end

  def size
    size = 0
    node_to_be_counted = beginning_node
    while node_to_be_counted.respond_to?(:data)
      size += 1
      node_to_be_counted = node_to_be_counted.the_next
    end
    size
  end

  def first(value)
    list = self
    list.each do |node|
      @node = node
      break if node.data == value
    end
    return @node
  end

  def all(value)
    list = self
    array = []
    list.each do |node|
      if node.data == value
        array << node
      end
    end
    array
  end

  def insert_beginning(new_beginning)
    if beginning_node.respond_to?(:data)
      pushed_down_node = beginning_node
      @first_node = new_beginning
      new_beginning.next_node = pushed_down_node
    else
      @first_node = new_beginning
    end
  end

  def remove_beginning
    removed_beginning = beginning_node
    @first_node = beginning_node.the_next
    removed_beginning
  end
end
