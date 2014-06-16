require 'test_helper'

class UsersHelperTest < ActionView::TestCase
  include UsersHelper
  test "should return the blank email address for the nil username passed" do
    email = show_user_email('')
    assert_nil email, nil   
  end
  
  test "should return the eamil address for the username passed" do
    email = show_user_email('surekhakolekar')
    assert_equal email, "kolekar.surekha@gmail.com"
    
  end
end
