require_relative 'stack'
require_relative 'given_when_then'

describe Stack do
  it 'should push a given item' do
    Given { @stack = Stack.new }

    When { @stack.push(1) }

    Then { expect(@stack.size).to be 1}
  end
end