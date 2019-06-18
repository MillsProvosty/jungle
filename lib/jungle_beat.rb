require './lib/linked_list'

class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    @list.append(data)
  end
end
