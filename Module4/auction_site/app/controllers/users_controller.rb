class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(entry_params)
    if @user.save
      redirect_to '/users'
    else
      flash[:alert] = @user.errors.full_messages
      render 'new'
    end
  end

  def destroy
    if user.present?
      user.destroy
      flash[:alert] = 'The user no exist'
    else
      flash[:notice] = 'The user deleted success'
    end
  end

  private
    def entry_params
      params.require(:user).permit(:name, :email)
    end

    def user
      @user = User.find_by(id: params[:id])
    end
end
