require "minitest/autorun"
require_relative "../lib/nerv"

class TestJetAlone < Minitest::Test
  def setup
    @ja = Nerv::JetAlone.new
  end

  def test_not_an_angel
    refute @ja.is_a?(Nerv::Angel)
  end

  def test_remote_shutdown_works_without_virus
    assert @ja.remote_shutdown!
    assert @ja.stopped?
  end

  def test_remote_shutdown_fails_with_virus
    @ja.inject_virus!(Nerv::VendorVirus.new)
    refute @ja.remote_shutdown!
    refute @ja.stopped?
  end

  def test_on_box_password
    @ja.inject_virus!(Nerv::VendorVirus.new)
    assert @ja.enter_password!("HOPE")
    assert @ja.stopped?
  end
  
  def test_runaway
    @ja.inject_virus!(Nerv::VendorVirus.new)
    12.times { @ja.run! }
    assert @ja.runaway?
  end
end
