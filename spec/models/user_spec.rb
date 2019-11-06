# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build :random_user }

  it 'is valid with valid attributes' do
    expect(build(:user)).to be_valid
  end
end
