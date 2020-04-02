require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "username presence" do
    user = User.new(username:"")
    assert_not user.valid?, "username can't be blank"
  end

  test "password can't be blank" do
    user = User.new(password:"")
    assert_not user.valid?, "password can't be blank"
  end

end
