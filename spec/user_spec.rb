require 'spec_helper'
require './user'

describe User do
  let(:user) { build :user, first_name: first_name, middle_name: middle_name, last_name: last_name, email: email }
  let(:first_name) { 'Damon' }
  let(:middle_name) { 'G.' }
  let(:last_name) { 'Ramsey' }
  let(:email) { 'damon@telus.com' }

  describe '#full_name' do
    let(:subject) { user.full_name }

    it { is_expected.to eq 'Damon G. Ramsey' }

    context 'when middle_name is nil' do
      let(:middle_name) { }

      it { is_expected.to eq 'Damon Ramsey' }
    end

    context 'when middle_name is blank' do
      let(:middle_name) { '' }

      it { is_expected.to eq 'Damon Ramsey' }
    end

    context 'when first_name is not capitalized' do
      let(:first_name) { 'damon' }

      it { is_expected.to eq 'Damon G. Ramsey' }
    end
  end

  describe '#admin?' do
    let(:subject) { user }

    context 'when email is nil' do
      let(:email) { }

      it { is_expected.not_to be_admin }
    end

    context 'when email is from gmail' do
      let(:email) { 'damon@gmail.com' }

      it { is_expected.not_to be_admin }
    end

    context 'when email is from TELUS' do
      let(:email) { 'damon@telus.com' }

      it { is_expected.to be_admin }
    end
  end
end
