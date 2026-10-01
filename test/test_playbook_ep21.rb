require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp21 < Minitest::Test
  def setup
    @origin_file = Nerv::OriginFile.new
    @gehirn = Nerv::Gehirn.new
    @magi = Nerv::Magi.new
    @liaison = Nerv::Liaison.new([:japan, :nerv, :seele])
    @shinji = Nerv::Operator.new(name: :shinji)
    @eva01 = Nerv::Eva.new(designation: "eva-01", operator: @shinji)
    
    @playbook = Nerv::PlaybookEp21.new
  end

  def test_success_path
    res = @playbook.run(
      origin_file: @origin_file,
      gehirn: @gehirn,
      magi: @magi,
      liaison: @liaison,
      shinji: @shinji,
      eva01: @eva01
    )
    
    assert_equal :origin_recorded, res
    assert @playbook.siem.emitted?(Nerv::SIEM::ORIGIN_FILE_OPENED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CONTACT_EXPERIMENT)
    assert @playbook.siem.emitted?(Nerv::SIEM::MAGI_BUILDER_NAOKO)
    assert @playbook.siem.emitted?(Nerv::SIEM::REI_I_KILLED)
    assert @playbook.siem.emitted?(Nerv::SIEM::GEHIRN_REBRAND)
    assert @playbook.siem.emitted?(Nerv::SIEM::LIAISON_CHANNEL_CLOSED)
    assert @playbook.siem.emitted?(Nerv::SIEM::KAJI_TERMINATED)
    assert @playbook.siem.emitted?(Nerv::SIEM::STILL_A_CHILD)
    assert @playbook.siem.emitted?(Nerv::SIEM::ORIGIN_RECORDED)
    
    refute @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
    
    assert_equal :naoko, @magi.builder
    assert_equal :yui, @eva01.maternal_presence_origin
    assert_equal :killed, @gehirn.rei_i_status
    assert_equal "NERV", @gehirn.name
    assert_equal :terminated, @liaison.status
  end
end
