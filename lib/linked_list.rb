require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    current_node = @head
    if current_node == nil
      @head = Node.new(data)
    else
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
        current_node.next_node = Node.new(data)
    end
      data
  end

  def count
    num = 0
    current_node = @head
    if current_node == nil
      num
    else
      num += 1
      while current_node.next_node != nil
        num += 1
        current_node = current_node.next_node
      end
    end
    num
  end

  def to_string
    string = ""
    current_node = @head
    if current_node == nil
      nil
    else
      string << current_node.data
      while current_node.next_node != nil
        current_node = current_node.next_node
        string << " " + current_node.data
      end
    end
    string
  end

  def prepend(data)
    current_node = @head
    #assigns the current node to what's already saved in head
    @head = Node.new(data)
    #creates an entirely NEW node with the data up front
    @head.next_node = current_node
    #tacks the old stuff onto the end of the NEW node.
  end
end
