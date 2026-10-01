require "minitest/autorun"
require_relative "../lib/nerv"

class TestCaptureCage < Minitest::Test
  def test_deploy_provokes_hatch
    angel = Nerv::Angels::Sandalphon.new
    cage = Nerv::CaptureCage.new
    
    assert_equal 0.0, angel.hatch_progress
    assert_equal :capture_failed, cage.deploy!(angel)
    assert angel.hatch_progress > 0.0
    assert cage.failed?
  end
end
