class UsersController < ApplicationController
  def new
    render "new"
  end

  def show
    @user = User.find params[:id]
  end
  def create
    email = params[:user_email]
    name = params[:user_name]
    user = User.new(name: name, email_address: email)
    user.save
    redirect_to("/users/new")
  end
  def destroy

  end
end
