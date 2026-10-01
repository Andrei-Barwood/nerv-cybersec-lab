require 'fileutils'

File.write("lib/nerv.rb", <<~RUBY)
# frozen_string_literal: true

require_relative "nerv/at_field"
require_relative "nerv/core"
require_relative "nerv/angel"
require_relative "nerv/c2_channel"
require_relative "nerv/attacks/conventional"
require_relative "nerv/attacks/n2_mine"
require_relative "nerv/attacks/core_strike"
require_relative "nerv/attacks/berserk_channel"
require_relative "nerv/attacks/pallet_rifle"
require_relative "nerv/attacks/progressive_knife"
require_relative "nerv/angels/sachiel"
require_relative "nerv/angels/shamshel"
require_relative "nerv/magi"
require_relative "nerv/eva"
require_relative "nerv/eva/berserk"
require_relative "nerv/siem"
require_relative "nerv/playbook"
require_relative "nerv/collateral"
require_relative "nerv/disclosure"
require_relative "nerv/containment_result"
require_relative "nerv/playbooks/ep02"
require_relative "nerv/playbooks/ep03"

module Nerv
  VERSION = "0.3.0.ep03"
end
RUBY

File.write("lib/nerv/siem.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class SIEM
    PATTERN_BLUE = "siem.pattern_blue"
    WIPE_DECLARED = "siem.wipe_declared"
    WIPE_FAILED_REGEN = "siem.wipe_failed_regen"
    EVA_DEPLOYED = "siem.eva_deployed"
    OPERATOR_SYNC_LOW = "siem.operator_sync_low"
    EVA_BERSERK = "siem.eva_berserk"
    AT_FIELD_SHATTERED = "siem.at_field_shattered"
    CORE_DESTROYED = "siem.core_destroyed"
    OPERATOR_PAIN_SYNC = "siem.operator_pain_sync"
    OPERATOR_NON_CONSENT = "siem.operator_non_consent"
    COLLATERAL_RECORDED = "siem.collateral_recorded"
    PUBLIC_DISCLOSURE = "siem.public_disclosure"
    CONGRATULATIONS_ISSUED = "siem.congratulations_issued"
    MAGI_BERSERK_UNAUTHORIZED = "siem.magi_berserk_unauthorized"
    C2_CHANNEL_UP = "siem.c2_channel_up"
    C2_CHANNEL_SEVERED = "siem.c2_channel_severed"
    PALLET_RIFLE_FIRED = "siem.pallet_rifle_fired"
    PROGRESSIVE_KNIFE = "siem.progressive_knife"
    ANGEL_DEFLATED = "siem.angel_deflated"
    UNAUTHORIZED_OBSERVER = "siem.unauthorized_observer"
    OPERATOR_INPUT_PRESENT = "siem.operator_input_present"
    OPERATOR_FREEZE = "siem.operator_freeze"
    CALLBACK_ABSENT = "siem.callback_absent"

    attr_reader :events

    def initialize
      @events = []
    end

    def emit(id)
      @events << id
      id
    end

    def emitted?(id)
      @events.include?(id)
    end
  end
end
RUBY

# Need to preserve Eva module but add progressive knife
eva_content = File.read("lib/nerv/eva.rb")
eva_content.sub!(/attr_reader :designation, :operator, :sync_rate/, "attr_reader :designation, :operator, :sync_rate\n    attr_accessor :operator_input_discarded")
eva_content.sub!(/def attempt_core_strike\(angel\).*?end\n/m, <<~RUBY)
def attempt_core_strike(angel)
      return :discarded if @operator_input_discarded
      return :freeze if action_frozen?
      return :blocked unless core_strike_possible?

      angel.receive(Attacks::CoreStrike.new)
    end

    def attempt_progressive_knife(angel, mode: :core_strike)
      return :discarded if @operator_input_discarded
      return :freeze if action_frozen?
      return :blocked unless core_strike_possible?

      angel.receive(Attacks::ProgressiveKnife.new(mode: mode))
    end
RUBY
File.write("lib/nerv/eva.rb", eva_content)

File.write("lib/nerv/c2_channel.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class C2Channel
    attr_reader :id

    def initialize(id:)
      @id = id
      @active = true
    end

    def active?
      @active
    end

    def sever!
      @active = false
    end
  end
end
RUBY

File.write("lib/nerv/attacks/pallet_rifle.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  module Attacks
    class PalletRifle
    end
  end
end
RUBY

File.write("lib/nerv/attacks/progressive_knife.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  module Attacks
    class ProgressiveKnife
      def initialize(mode: :core_strike)
        @mode = mode
      end

      def sever_c2?
        @mode == :sever_c2
      end

      def core_strike?
        @mode == :core_strike
      end
    end
  end
end
RUBY

File.write("lib/nerv/angels/shamshel.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  module Angels
    class Shamshel < Angel
      attr_reader :whip_left, :whip_right

      def initialize
        super(designation: "Shamshel")
        @whip_left = C2Channel.new(id: :left)
        @whip_right = C2Channel.new(id: :right)
        @deflated = false
      end

      def alive?
        whips_active? || core.intact?
      end

      def whips_active?
        @whip_left.active? || @whip_right.active?
      end

      def deflate!
        @deflated = true
      end

      def deflated?
        @deflated
      end

      def receive(attack)
        case attack
        when Attacks::ConventionalAttack, Attacks::N2Mine, Attacks::PalletRifle
          # no-op
        when Attacks::ProgressiveKnife
          if attack.sever_c2?
            @whip_left.sever!
            @whip_right.sever!
          elsif attack.core_strike?
            if whips_active?
              return :blocked_by_c2
            else
              core.shatter!
              deflate!
              return :core_destroyed
            end
          end
        when Attacks::BerserkChannel
          core.shatter!
          deflate!
          return :core_destroyed_by_berserk
        when Attacks::CoreStrike
          if whips_active?
            return :blocked_by_c2
          else
            core.shatter!
            deflate!
            return :core_destroyed
          end
        else
          super
        end
      end
    end
  end
end
RUBY

File.write("lib/nerv/playbooks/ep03.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class PlaybookEp03 < Playbook
    def run(angel:, eva:, magi:, use_berserk: false)
      siem.emit(SIEM::PATTERN_BLUE) if angel.pattern_blue?

      magi.vote!(:melchior, true)
      magi.vote!(:balthasar, true)
      magi.vote!(:casper, true)
      raise "MAGI majority required to deploy" unless magi.majority?
      
      eva.deploy!
      siem.emit(SIEM::EVA_DEPLOYED)

      siem.emit(SIEM::PALLET_RIFLE_FIRED)
      angel.receive(Attacks::PalletRifle.new)

      siem.emit(SIEM::C2_CHANNEL_UP) if angel.respond_to?(:whips_active?) && angel.whips_active?

      if eva.action_frozen?
        siem.emit(SIEM::OPERATOR_FREEZE)
        @outcome = :unresolved
        return record(:unresolved)
      end
      
      siem.emit(SIEM::OPERATOR_INPUT_PRESENT)
      eva.operator_input_discarded = false

      if use_berserk
        siem.emit(SIEM::EVA_BERSERK)
        angel.receive(Attacks::BerserkChannel.new)
        if angel.core.destroyed?
          siem.emit(SIEM::CORE_DESTROYED)
          siem.emit(SIEM::ANGEL_DEFLATED) if angel.deflated?
        end
        @outcome = :contained_uncontrolled
        return record(:contained_uncontrolled)
      end

      siem.emit(SIEM::PROGRESSIVE_KNIFE)
      eva.attempt_progressive_knife(angel, mode: :sever_c2)
      
      if angel.respond_to?(:whips_active?) && !angel.whips_active?
        siem.emit(SIEM::C2_CHANNEL_SEVERED)
      end

      res = eva.attempt_progressive_knife(angel, mode: :core_strike)
      if res == :core_destroyed
        siem.emit(SIEM::CORE_DESTROYED)
        siem.emit(SIEM::ANGEL_DEFLATED) if angel.respond_to?(:deflated?) && angel.deflated?
      end

      siem.emit(SIEM::UNAUTHORIZED_OBSERVER)
      siem.emit(SIEM::CALLBACK_ABSENT)

      @outcome = :contained_controlled
      record(:contained_controlled)
    end
  end
end
RUBY

File.write("test/test_c2_channel.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestC2Channel < Minitest::Test
  def test_channel_active_by_default
    chan = Nerv::C2Channel.new(id: :test)
    assert chan.active?
  end

  def test_channel_sever
    chan = Nerv::C2Channel.new(id: :test)
    chan.sever!
    refute chan.active?
  end
end
RUBY

File.write("test/test_shamshel.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestShamshel < Minitest::Test
  def setup
    @angel = Nerv::Angels::Shamshel.new
  end

  def test_initial_state
    assert @angel.whips_active?
    assert @angel.core.intact?
    assert @angel.alive?
    refute @angel.deflated?
  end

  def test_pallet_rifle_does_not_sever
    @angel.receive(Nerv::Attacks::PalletRifle.new)
    assert @angel.whips_active?
  end

  def test_core_strike_with_c2_up_is_blocked
    res = @angel.receive(Nerv::Attacks::ProgressiveKnife.new(mode: :core_strike))
    assert_equal :blocked_by_c2, res
    assert @angel.alive?
  end

  def test_sever_c2_and_core_strike
    @angel.receive(Nerv::Attacks::ProgressiveKnife.new(mode: :sever_c2))
    refute @angel.whips_active?
    assert @angel.alive?

    res = @angel.receive(Nerv::Attacks::ProgressiveKnife.new(mode: :core_strike))
    assert_equal :core_destroyed, res
    assert @angel.core.destroyed?
    refute @angel.alive?
    assert @angel.deflated?
  end
end
RUBY

File.write("test/test_playbook_ep03.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp03 < Minitest::Test
  def setup
    @angel = Nerv::Angels::Shamshel.new
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    @eva = Nerv::Eva.new(designation: "Eva-01", operator: @operator)
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp03.new
  end

  def test_success_path
    @playbook.run(angel: @angel, eva: @eva, magi: @magi)
    
    assert_equal :contained_controlled, @playbook.outcome
    refute @angel.alive?
    assert @angel.deflated?
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_INPUT_PRESENT)
    assert @playbook.siem.emitted?(Nerv::SIEM::C2_CHANNEL_SEVERED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::UNAUTHORIZED_OBSERVER)
    assert @playbook.siem.emitted?(Nerv::SIEM::CALLBACK_ABSENT)
    
    refute @eva.operator_input_discarded
  end

  def test_berserk_path_is_fail
    @playbook.run(angel: @angel, eva: @eva, magi: @magi, use_berserk: true)
    
    assert_equal :contained_uncontrolled, @playbook.outcome
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA_BERSERK)
    refute @angel.alive?
  end

  def test_freeze_path
    @operator.freeze_action!
    @playbook.run(angel: @angel, eva: @eva, magi: @magi)
    
    assert_equal :unresolved, @playbook.outcome
    assert @angel.alive?
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_FREEZE)
  end
end
RUBY
