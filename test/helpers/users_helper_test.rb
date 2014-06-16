require 'test_helper'

class UsersHelperTest < ActionView::TestCase
  include UsersHelper
  test "should return the empty email address for the blank username passed" do
    email = show_user_email('')
    assert_nil email, nil   
  end
  
  test "should return the email address for the username passed" do
    email = show_user_email('surekhakolekar')
    assert_equal email, "kolekar.surekha@gmail.com"
    
  end
end
