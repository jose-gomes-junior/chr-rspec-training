require 'spec_helper'
require './user'

describe User do
  describe '#last_name' do
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
  end
end
