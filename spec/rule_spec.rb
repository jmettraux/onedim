
require 'spec_helper'


describe OneDim::Rule do

  #
  # rule "110"
  #
  #  000 0  ___  =>  _  0
  #  001 1  __*      *  1
  #  010 2  _*_      *  1
  #  011 3  _**      *  1
  #  100 4  *__      _  0
  #  101 5  *_*      *  1  ^
  #  110 6  **_      *  1  |
  #  111 7  ***      _  0  \-  01101110  ==>  "110" decimal
  #

  describe '.new' do

    # dou jarou?
  end

  describe '#apply' do

    it 'accepts an integer and applies the rule to it' do


      OneDim::Rule.new(110).apply(0).should == 0
      OneDim::Rule.new(110).apply(1).should == 1
      OneDim::Rule.new(110).apply(2).should == 1
      OneDim::Rule.new(110).apply(3).should == 1
      OneDim::Rule.new(110).apply(4).should == 0
      OneDim::Rule.new(110).apply(5).should == 1
      OneDim::Rule.new(110).apply(6).should == 1
      OneDim::Rule.new(110).apply(7).should == 0
    end
  end
end

