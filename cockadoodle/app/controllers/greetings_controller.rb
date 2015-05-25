class GreetingsController < ApplicationController
  def index

  end

  def create
  end


  def new
    @greeting = Greeting.new
    @user = User.new
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
