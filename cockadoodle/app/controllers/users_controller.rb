class UsersController < ApplicationController

include ApplicationHelper



  def index
    @user = current_user
    @greetings = @user.greetings
  end

  def create
     @user = User.new(username: params[:username], password_hash: params[:password_hash])
     # @user.password = params[:password]
     if @user.save
       session[:id] = @user.id
       redirect_to '/users'
     else
       redirect '/users/new'
     end
  end

  def new
    @user = User.new
  # @action = "users"
  # @value = "create account"
  # session[:error] = nil
  end


  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

end
