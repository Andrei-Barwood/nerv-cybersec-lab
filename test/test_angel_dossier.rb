# frozen_string_literal: true

require_relative "test_helper"

class TestAngelDossier < Minitest::Test
  def test_all_18_angels_registered
    dossiers = Nerv::AngelDossier.all
    assert_equal 18, dossiers.size
  end

  def test_angel_structure_and_fields
    Nerv::AngelDossier.all.each do |d|
      assert d[:id], "Dossier must have id"
      assert d[:slug], "Dossier must have slug"
      assert d[:name], "Dossier must have name"
      assert d[:episodes], "Dossier must have episodes"
      assert d[:threat_class], "Dossier must have threat_class"
      assert d[:mechanical_purposes], "Dossier must have mechanical_purposes"
      assert d[:spoilers], "Dossier must have spoilers"
      assert d[:vulnerability], "Dossier must have vulnerability"
      assert d[:vulnerability_nature], "Dossier must have vulnerability_nature"
      assert d[:vulnerability_explanation], "Dossier must have vulnerability_explanation"
      assert d[:keel_seele_role], "Dossier must have keel_seele_role"
      assert d[:cybersec_equivalent], "Dossier must have cybersec_equivalent"
      assert d[:siem_events].is_a?(Array), "Dossier must have siem_events array"
      refute_empty d[:siem_events]
      assert d[:magi_consensus].is_a?(Hash), "Dossier must have magi_consensus"
      assert d[:magi_consensus]["melchior"], "Dossier must have Melchior consensus"
      assert d[:magi_consensus]["balthasar"], "Dossier must have Balthasar consensus"
      assert d[:magi_consensus]["casper"], "Dossier must have Casper consensus"
    end
  end

  def test_find_by_various_formats
    assert_equal "Adam (Primer Ángel)", Nerv::AngelDossier.find("01")[:name]
    assert_equal "Adam (Primer Ángel)", Nerv::AngelDossier.find("1")[:name]
    assert_equal "Adam (Primer Ángel)", Nerv::AngelDossier.find("angel_01")[:name]
    assert_equal "Adam (Primer Ángel)", Nerv::AngelDossier.find("adam")[:name]
    assert_equal "Lilith (Segundo Ángel)", Nerv::AngelDossier.find("lilith")[:name]
    assert_equal "Sachiel (Tercer Ángel)", Nerv::AngelDossier.find("sachiel")[:name]
    assert_equal "Tabris / Kaworu Nagisa (Decimoséptimo Ángel)", Nerv::AngelDossier.find("tabris")[:name]
    assert_equal "Lilim / La Humanidad (Decimoctavo Ángel)", Nerv::AngelDossier.find("lilim")[:name]
  end

  def test_vulnerability_nature_categories
    honeypot_angels = Nerv::AngelDossier.all.select { |d| d[:vulnerability_nature].include?("HONEYPOT") || d[:vulnerability_nature].include?("TROYANO") }
    design_flaw_angels = Nerv::AngelDossier.all.select { |d| d[:vulnerability_nature].include?("DEFECTO DE DISEÑO") || d[:vulnerability_nature].include?("CONDICIÓN") }

    refute_empty honeypot_angels, "Must identify SEELE honeypot angels"
    refute_empty design_flaw_angels, "Must identify biological design flaw angels"
    assert honeypot_angels.any? { |d| d[:slug] == "lilith" }, "Lilith must be identified as Honeypot"
    assert honeypot_angels.any? { |d| d[:slug] == "tabris" }, "Tabris must be identified as SEELE Trojan / Honeypot"
    assert honeypot_angels.any? { |d| d[:slug] == "bardiel" }, "Bardiel must be identified as SEELE structural honeypot / supply chain attack"
  end

  def test_simulation_runs
    sim = Nerv::AngelDossier.simulate("angel_03")
    assert_includes sim[:output], "Sachiel"
    assert_includes sim[:output], "siem.pattern_blue"
    assert_includes sim[:output], "outcome=contained_uncontrolled"
    assert_equal 1, sim[:exit_code]

    sim_adam = Nerv::AngelDossier.simulate("adam")
    assert_includes sim_adam[:output], "Adam"
    assert_includes sim_adam[:output], "outcome=contained_controlled"
    assert_equal 0, sim_adam[:exit_code]
  end
end
