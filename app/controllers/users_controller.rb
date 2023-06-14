class UsersController < ApplicationController

  def show
    @usuario = User.find(current_user.id)
  end
end
