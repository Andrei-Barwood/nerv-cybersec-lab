# frozen_string_literal: true

require "minitest/autorun"
require "nerv"

# Guard: this file can be required while it is still loading (ARGV expansion
# below pulls in sibling tests, which require_relative this helper).
return if defined?(Nerv::TEST_HELPER_LOADED)
Nerv::TEST_HELPER_LOADED = true

# `ruby a.rb b.rb` only executes a.rb; remaining ARGV are not loaded.
# The ep 01 criterion command lists four files — pull the rest in.
ARGV.replace(
  ARGV.reject do |arg|
    next false unless arg.end_with?(".rb") && File.file?(arg)

    path = File.expand_path(arg)
    require path unless path == File.expand_path($PROGRAM_NAME)
    true
  end
)
