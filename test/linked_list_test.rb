require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class TestLinkedList < Minitest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_list_exists
    assert_instance_of LinkedList, @linked_list
  end

  def test_head_returns_nil
    assert_nil @linked_list.head
  end

  
end
