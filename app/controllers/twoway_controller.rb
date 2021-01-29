class TwowayController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end
  
  def register
  end

  def login
  end

  def no_access
  end

  def admin
    p @@loggedin_user_role
    if @@loggedin_user_role == "admin"
      @users = User.all
    else
      redirect_to no_access_path
    end
  end

  def user_create
    @user = User.create(user_params)
    if @user.save
        flash[:success] = "New User Regested"
        redirect_to index_path
    else
        flash.now[:error] = @user.errors.full_messages.to_sentence
        render "new"
    end
  end

  def delete_user
      if params[:id] != @@loggedin_user_id
          @user = User.find(params[:id])
          @user.destroy
          redirect_to admin_path
      end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def user_login(id, role)
    @@loggedin_user_id = id
    @@loggedin_user_role = role
    p id
    p role
  end
  
  def user_login_attempt
    # p params[:user][:email]
    # p params[:user][:password]
    @user = User.where(email: params[:user][:email]).first
    if @user[:password] == params[:user][:password]
        user_login(@user[:id],@user[:role])
        if @user[:role] == "admin"
          redirect_to admin_path
        else
          redirect_to index_path
        end
    else
        flash.now[:error] = @user.errors.full_messages.to_sentence
        redirect_to login_path
    end

  end

end
