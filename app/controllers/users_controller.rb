
class UsersController < ApplicationController
  before_action :set_user, only: [:destroy]
def destroy
    # authorize! :delete, @user
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end


     private
    def set_user
      @user = User.find(params[:id])
    end
  end