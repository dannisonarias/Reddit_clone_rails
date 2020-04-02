require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new( username: 'iamuser', password: "foobar")
  end

  test "username presence" do
    @user.username = "  "
    assert_not @user.valid?, "username can't be blank"
  end

  test "password presence" do
    @user.password = "  "
    assert_not @user.valid?, "password can't be blank"
  end

end
