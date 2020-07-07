class RegistrationsController < RegistrationsController
def new
@user = User.new
end

def create
@user = User.new(add_user_params)
if @user.save
redirect_to posts_path
end
end


private

def add_user_params
params.require(:user).permit(:email, :username, :password, :password_confirmation)
end
end