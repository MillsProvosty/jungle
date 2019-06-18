require './lib/linked_list'

class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    new = data.split(' ')
    new.each do |x|
      @list.append(x)
    end
    @list.to_string
  end

  def count
    @list.count
  end
end
