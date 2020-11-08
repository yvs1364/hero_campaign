class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

def create
  @user = User.new(sign_up_params)
  @user.level = 1
  if @user.save! 
    sign_in(@user)
    redirect_to  "/"
  else
   redirect_to new_user_registration_path
  end
end


private

      def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation, :pseudo, :breed, :category )
      end
  end

