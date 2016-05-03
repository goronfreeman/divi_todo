require 'rails_helper'

describe User do
  let(:user) { create(:user) }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end
end
