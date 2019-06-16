require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'


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

# > require "./lib/node"
# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil