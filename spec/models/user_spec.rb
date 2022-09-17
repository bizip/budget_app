# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  include Devise::Test::IntegrationHelpers
  subject do
    User.new(name: 'Bizimungu Pascal', password: '12345678', email: 'bgp04@gmail.com')
  end

  before { subject.save }

  it 'should have valid name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
