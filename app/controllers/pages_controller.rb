class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @internships = Internship.all
    if params[:query].present?
      @internships = @internships.search_by_title(params[:query])
    end
    @users = User.where(role: true)
  end
end
