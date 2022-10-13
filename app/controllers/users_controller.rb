class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototype = Prototype.all
    @prototypes = @user.prototypes.includes(:user)
  end
   
end
