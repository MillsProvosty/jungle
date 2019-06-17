require './test/test_helper'

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

  def test_append_adds_node_and_returns_data
    assert_equal "doop", @linked_list.append("doop")
  end

  def test_next_node_returns_nil
    @linked_list.append("doop")
    assert_nil @linked_list.head.next_node
    @linked_list.append("bleep")
    assert_nil @linked_list.head.next_node.next_node
    @linked_list.append("blarf")
    assert_nil @linked_list.head.next_node.next_node.next_node
    @linked_list.append("pfffffft")
    assert_nil @linked_list.head.next_node.next_node.next_node.next_node
    @linked_list.append("yeeeeeeeet")
    assert_equal "yeeeeeeeet", @linked_list.head.next_node.next_node.next_node.next_node.data
  end


  def test_count_returns_count
    @linked_list.append("yeeeeeeeet")
    assert_equal 1, @linked_list.count
    @linked_list.append("pfffffft")
    assert_equal 2, @linked_list.count
    @linked_list.append("blarf")
    assert_equal 3, @linked_list.count
  end

  def test_to_string_returns_data
    @linked_list.append("Nar.")
    assert_equal "Nar.", @linked_list.to_string
    @linked_list.append("yeeeeeeeet")
    assert_equal "Nar. yeeeeeeeet", @linked_list.to_string
    @linked_list.append("pfffffft")
    assert_equal "Nar. yeeeeeeeet pfffffft", @linked_list.to_string
  end

  def test_prepend_adds_to_beginning_of_list
    @linked_list.append("Plop")
    assert_equal "Plop", @linked_list.to_string
    @linked_list.append("suu")
    assert_equal "Plop suu", @linked_list.to_string
    @linked_list.prepend("dop")
    assert_equal "dop Plop suu", @linked_list.to_string
  end

  def test_insert_puts_word_in_index
      @linked_list.append("Plop")
      @linked_list.append("suu")
      @linked_list.prepend("dop")
      @linked_list.insert(1, "woo")
      assert_equal "dop woo Plop suu", @linked_list.to_string
  end





end
