require './test/test_helper.rb'


class TestJungleBeat < Minitest::Test
  def setup
    @jungle_beat = JungleBeat.new
  end

  def test_instance_of_jungle_beat
    assert_instance_of JungleBeat, @jungle_beat
  end

  def test_list_returns_Linked_list
    assert_equal LinkedList, @jungle_beat.list.class
    assert_nil @jungle_beat.list.head
  end

  def test_append_adds_node_and_returns_data
    assert_equal "deep doo ditt", @jungle_beat.append("deep doo ditt")
  end


end
