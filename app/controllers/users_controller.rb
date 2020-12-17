class UsersController < ApplicationController
  before_action :authenticate_user!, except: :show
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @profile = @user.profile
    @occupation = @user.occupation
    @position = @user.position
    @prototypes = Prototype.includes(:user)
  end
end
