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
    if current_node.next_node == nil
      num += 1
    else
      num += 1
      while current_node.next_node != nil
        current_node = current_node.next_node
        num += 1
      end
    end
    num
  end

  def to_string
    string = ""
    current_node = @head

    if current_node == nil
      ""
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
    @head = Node.new(data)
    @head.next_node = current_node
  end





end
