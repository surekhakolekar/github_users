module UsersHelper
  #Helper method to retrieve the email of user. This method will make a Rest call to github api.
  #Github api accepts a single parametrs as Username to get the user details  
  def show_user_email(username)
    user = RestClient.get "https://api.github.com/users/#{username}"
    response = JSON.parse(user)
    response['email']
  end     
end
