
require 'spec_helper'


describe OneDim::Automaton do

  describe '.new' do

    it 'accepts an initial state (string) and a rule (int)' do

      OneDim::Automaton.new('00001', 110)
    end
  end

  describe '#current' do

    it 'returns the current state as a string' do

      a = OneDim::Automaton.new('00001', 110)

      a.current..should == '00001'
    end
  end

  describe '#time' do

    it 'returns 0 when no step was done' do

      a = OneDim::Automaton.new('00001', 110)

      a.time.should == 0
    end

    it 'returns 1 after 1 step' do

      a = OneDim::Automaton.new('00001', 110)
      a.step

      a.time.should == 1
    end
  end

  describe '#step' do

    it 'returns [ time, state ]' do

      a = OneDim::Automaton.new('00001', 110)

      a.step.should == [ 1, '00011' ]
    end
  end
end

