require 'spec_helper'
require 'meszaros/loop'

module Meszaros
  describe Loop do
    it 'should allow data driven spec : 0' do
      result = []
      Loop.data_driven_spec([]) do |element|
        result << element
      end

      result.should be_empty
    end

    it 'should allow data driven spec : 1' do
      result = []
      Loop.data_driven_spec([4]) do |element|
        result << element
      end

      result.should == [4]
    end

    it 'should allow data driven spec : n' do
      result = []
      Loop.data_driven_spec([1,2,3,4]) do |element|
        result << element
      end

      result.should == [1,2,3,4]
    end

    it 'should raise exception when nil is passed as the parameter' do
      expect do
        Loop.data_driven_spec(nil) do |element|
          true.should be_true
        end
      end.to raise_error
    end

    it 'execute code 0 times' do
      result = 0

      Loop.repeat(0) do
        result += 1
      end

      result.should == 0
    end

    it 'execute code once' do
      result = 0

      Loop.repeat(0) do
        result += 1
      end

      result.should == 1
    end

    it 'raises exception for nil parameter in repeat' do
      expect do
        Loop.repeat(nil) do
          true.should be_true
        end
      end.to raise_error
    end

    it 'raises exception for string parameter in repeat' do
      expect do
        Loop.repeat('dumb') do
          true.should be_true
        end
      end.to raise_error
    end

    it 'raises exception for float parameter in repeat' do
      expect do
        Loop.repeat(1.1) do
          true.should be_true
        end
      end.to raise_error
    end

    it 'execute code n number of times' do
      result = 0

      Loop.repeat(3) do
      result += 1
    end

    result.should == 3
   end
end
end