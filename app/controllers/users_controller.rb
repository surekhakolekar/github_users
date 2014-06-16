class UsersController < ApplicationController
  
  # GET /users
  # GET /users.json
  def index
    if params[:users].present? 
      @users = params[:users]
    end
    @users || []
  end  

  # GET /users/import
  # This method will import all the usernames from CSV file
  def import
    if params[:file]
      @users = User.import(params[:file])
      redirect_to root_url(:users => @users), notice: 'Users were successfully imported.'
    else
      redirect_to root_url, notice: 'Please select File to upload'
    end  
   end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
