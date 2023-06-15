class UsersController < ApplicationController
  def show
    @usuario = User.find(params[:id])
  end
end
