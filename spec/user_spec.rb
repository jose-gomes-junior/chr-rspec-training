require 'spec_helper'
require './user'

describe User do
  let(:user) do
    User.new.tap do |user|
      user.first_name = first_name
      user.middle_name = middle_name
      user.last_name = last_name
    end
  end
  let(:first_name) { 'Damon' }
  let(:middle_name) { 'G.' }
  let(:last_name) { 'Ramsey' }

  describe '#full_name' do
    subject { user.full_name }

    it { is_expected.to eq 'Damon G. Ramsey' }

    context 'when middle_name is nil' do
      let(:middle_name) { }

      it { is_expected.to eq 'Damon Ramsey' }
    end

    context 'when middle_name is blank' do
      let(:middle_name) { '' }

      it { is_expected.to eq 'Damon Ramsey' }
    end

    context 'when name attributes are downcase' do
      let(:first_name) { 'damon' }

      it { is_expected.to eq 'Damon G. Ramsey' }
    end
  end
end
