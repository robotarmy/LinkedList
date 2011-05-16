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
    list = self
    size = 0
    list.each do |node|
      size += 1
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

# the first node is location 0 (zero)
  def locate_node(location)
    cache = self.beginning_node
    location.times do
      cache = cache.the_next
    end
    cache
  end

  def insert_beginning(new_beginning_or_location)
    if new_beginning_or_location.respond_to?(:data)
      new_beginning = new_beginning_or_location
      if beginning_node.respond_to?(:data)
        pushed_down_node = beginning_node
        @first_node = new_beginning
        new_beginning.next_node = pushed_down_node
      else
        @first_node = new_beginning
      end
    elsif new_beginning_or_location.respond_to?(:/)
      location = new_beginning_or_location
      node = locate_node(location)
      new_list = List.new(node)
    else
      puts "Hello from the else!"
    end
  end

  def remove_beginning
    removed_beginning = beginning_node
    @first_node = beginning_node.the_next
    removed_beginning
  end

  def remove_end
    list = self
    location = list.size - 2
    node = locate_node(location)
    node.remove_next
    list
  end

  def sort
    duplicated_list = self.dup
    if duplicated_list.size < 2
    else
       left = (duplicated_list.size / 2)
       #right
    end
    duplicated_list
  end
end
