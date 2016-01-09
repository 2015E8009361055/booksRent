require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "769609310xd", password_confirmation: "769609310xd")

  end

  test "authenticated? should return false for a user with nil digest" do
  	assert_not @user.authenticated?(:remember, '')
  end
  
  test "should be valid" do
    assert @user.valid?
  end


end
