module UsersHelper
  #Helper method to retrieve the email of user. This method will make a Rest call to github api.
  #Github api accepts a single parametrs as Username to get the user details  
  def show_user_email(username)
    begin
    user = RestClient.get "https://api.github.com/users/#{username}"
    response = JSON.parse(user)
    response['email']  
    rescue Exception => ex #Rescue exception if any connectivity issue occurrs
      logger.error("Message for the log file #{ex.message}")
    end  
  end     
end
