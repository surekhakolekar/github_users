require 'test_helper'

class UsersHelperTest < ActionView::TestCase
  include UsersHelper

  test "MyHelperShouldReturnSomeHTML" do
    html = show_user_email('test')
    #assert_select node(html), "span.a_class", "test span's innerHTML here."
  end
end
