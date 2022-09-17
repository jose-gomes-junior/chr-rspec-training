require 'spec_helper'
require './user'

describe User do
  describe '#name' do
    it 'returns nil when not set' do
      user = User.new

      expect(user.name).to be_nil
    end

    it 'returns name when it is set' do
      user = User.new
      user.instance_variable_set(:@name, 'Damon')

      expect(user.instance_variable_get(:@name)).to eq 'Damon'
    end
  end

  describe '#name=' do
    it 'accepts nil' do
      user = User.new
      user.name = nil
      expect(user.name).to be_nil
    end

    it 'accepts a name' do
      user = User.new
      user.name = 'Damon'

      expect(user.name).to eq 'Damon'
    end
  end
end
