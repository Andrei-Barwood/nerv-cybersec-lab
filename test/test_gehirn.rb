require "minitest/autorun"
require_relative "../lib/nerv"

class TestGehirn < Minitest::Test
  def test_gehirn
    gehirn = Nerv::Gehirn.new
    assert_equal "Gehirn", gehirn.name
    assert_equal :alive, gehirn.rei_i_status
    
    gehirn.kill_rei_i!
    assert_equal :killed, gehirn.rei_i_status
    
    gehirn.rebrand!
    assert_equal "NERV", gehirn.name
  end
end
