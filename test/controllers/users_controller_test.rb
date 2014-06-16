require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_nil assigns(:users)
  end
  
  # use the Tempfile and Rack::Test::UploadFile classes and manually creating a CSV file and supply this to the get method:
  test "should import user" do
    csv_rows = <<-eos
Testname1@example.com
Testname2@example.com
Testname3@example.com
eos
    
  file = Tempfile.new('new_users.csv')
  file.write(csv_rows)
  file.rewind

   get :import, :file => Rack::Test::UploadedFile.new(file, 'text/csv')
   assert_equal "Users were successfully imported.", flash[:notice]
  end

end
