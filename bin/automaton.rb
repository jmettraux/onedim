#!/usr/bin/env ruby

$:.unshift(File.expand_path('../../lib', __FILE__))
require 'onedim'

state, rule = ARGV

a = OneDim::Automaton.new(state, rule.to_i)

loop do
  puts a.state
  a.step
end

