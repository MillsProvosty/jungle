require './test/test_helper'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("plop")
  end

  def test_node_exists
    assert_instance_of Node, @node
  end

  def test_node_has_data
    assert_equal "plop", @node.data
  end

  def test_next_node_has_no_data
    assert_nil @node.next_node
  end
end
