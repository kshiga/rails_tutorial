require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end

  test "displays activated user" do
    log_in_as(@user)
    get user_path(id: @other_user.id)
    assert_template 'users/show'
    @other_user.toggle!(:activated)
    get user_path(id: @other_user.id)
    assert_redirected_to root_url

  end
end
