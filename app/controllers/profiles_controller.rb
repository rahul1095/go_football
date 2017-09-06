
class ProfilesController < ApplicationController
  
    # authorize! :delete, @user
    respond_to :html, :json

    def show
     @user = User.find(params[:id])
   end
   
   def edit
     @user = User.find(params[:id])
   end

    def update

      @user = User.find params[:id]
      @user.update_attributes(message_params)
      respond_with @user
  
    #   format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
    #   format.json { respond_with_bip(@user) }
    # else
    #   format.html { render :action => "edit" }
    #   format.json { respond_with_bip(@user) }
    # end
  end
   def destroy
   end
   private

  def message_params
       params.require(:user).permit(:fullname, :username, :phone_number, :last_sign_out_at, :current_password, :image,:about_us,:age,:country,:city_town,:resident_address,:my_football_possition) 

  end
  end
