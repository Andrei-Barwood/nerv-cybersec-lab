require "minitest/autorun"
require_relative "../lib/nerv"

class TestTabris < Minitest::Test
  def test_tabris
    tabris = Nerv::Tabris.new
    
    assert tabris.is_a?(Nerv::Angel)
    assert tabris.looks_human?
    assert tabris.alive?
    refute tabris.aborted?
    
    tabris.abort_merge!
    assert tabris.aborted?
    
    shinji = Nerv::Operator.new(name: :shinji)
    tabris.crushed_by!(shinji)
    refute tabris.alive?
    
    assert_raises(RuntimeError) do
      Nerv::Tabris.new.crushed_by!(nil)
    end
  end
end
