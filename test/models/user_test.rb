require 'test_helper'

class UserTest < ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers

  test 'is valid with valid attributes' do
    user = User.new(
      name: 'John Doe',
      email: 'john.doe@example.com',
      password: 'password123'
    )
    assert user.valid?
  end

  test 'is not valid without a name' do
    user = User.new(
      email: 'john.doe@example.com',
      password: 'password123'
    )
    assert_not user.valid?
  end

  test 'is not valid without an email' do
    user = User.new(
      name: 'John Doe',
      password: 'password123'
    )
    assert_not user.valid?
  end

  test 'is not valid without a password' do
    user = User.new(
      name: 'John Doe',
      email: 'john.doe@example.com'
    )
    assert_not user.valid?
  end
end
