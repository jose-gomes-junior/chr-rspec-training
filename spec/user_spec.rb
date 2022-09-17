require 'spec_helper'
require './user'

describe User do
  describe '#full_name' do
    it 'returns first_name, middle_name and last_name combination' do
      user = User.new
      user.first_name = 'Damon'
      user.middle_name = 'G.'
      user.last_name = 'Ramsey'

      expect(user.full_name).to eq 'Damon G. Ramsey'
    end

    it 'returns first_name and last_name combination' do
      user = User.new
      user.first_name = 'Damon'
      user.last_name = 'Ramsey'

      expect(user.full_name).to eq 'Damon Ramsey'
    end

    it 'ignores empty attributes and returns full_name' do
      user = User.new
      user.first_name = 'Damon'
      user.middle_name = ''
      user.last_name = 'Ramsey'

      expect(user.full_name).to eq 'Damon Ramsey'
    end

    it 'capitalizes first letter of each name' do
      user = User.new
      user.first_name = 'damon'
      user.last_name = 'ramsey'
      user.middle_name = 'g.'

      expect(user.full_name).to eq 'Damon G. Ramsey'
    end
  end
end
