require 'spec_helper'
require './user'

describe User do
  let(:user) { build :user }

  describe '#full_name' do
    let(:subject) { user.full_name }

    it { is_expected.to eq 'Damon G. Ramsey' }

    context 'when middle_name is nil' do
      let(:user) { build :user, :nil_middle_name}

      it { is_expected.to eq 'Damon Ramsey' }
    end

    context 'when middle_name is blank' do
      let(:user) { build :user, :empty_middle_name}

      it { is_expected.to eq 'Damon Ramsey' }
    end

    context 'when name attributes are downcase' do
      let(:user) { build :user, first_name: 'damon'}

      it { is_expected.to eq 'Damon G. Ramsey' }
    end
  end
end
