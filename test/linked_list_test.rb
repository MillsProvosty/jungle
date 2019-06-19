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

  def test_finds_index_and_num_of_nodes
    @linked_list.append("deep")
    @linked_list.append("woo")
    @linked_list.append("shi")
    @linked_list.append("shu")
    @linked_list.append("blop")
    assert_equal "deep woo shi shu blop", @linked_list.to_string
    assert_equal "shi", @linked_list.find(2, 1)
    assert_equal "woo shi shu", @linked_list.find(1, 3)
  end

  def test_includes_finds_data
    @linked_list.append("deep")
    @linked_list.append("woo")
    @linked_list.append("shi")
    @linked_list.append("shu")
    @linked_list.append("blop")
    assert_equal "deep woo shi shu blop", @linked_list.to_string
    assert @linked_list.includes?("deep")
    refute @linked_list.includes?("dep")
  end


  def test_pop_removes_last_word
    @linked_list.append("deep")
    @linked_list.append("woo")
    @linked_list.append("shi")
    @linked_list.append("shu")
    @linked_list.append("blop")
    assert_equal "deep woo shi shu blop", @linked_list.to_string

    @linked_list.pop
    assert_equal "deep woo shi shu", @linked_list.to_string

    @linked_list.pop
    assert_equal "deep woo shi", @linked_list.to_string
  end
end
