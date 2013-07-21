class UsersController < ApplicationController

  def new

    @user = User.new
    @teams = Team.all

  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_url(@user)
    else
      render :new
    end

  end

  def show
    @user = User.find(params[:id])

  end

end
