class InternshipsController < ApplicationController
  before_action :set_internship, only: %i[show edit update]
  def index
    if current_user.role == false
      #student
      @internships = Internship.all
      if params[:query].present?
        @internships = @internships.search_by_title(params[:query])
      end
    else
      #company
      @internships = Internship.where(user: current_user)
    end
  end

    def show
      @postulation = Postulation.new
    end



  def new
    @internship = Internship.new
  end

  def create
    @internship = Internship.new(internship_params)
    @internship.user = current_user

    if @internship.save
      redirect_to internship_path(@internship)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @internship.update(internship_params)
    redirect_to internship_path(@internship)
  end


    private

  def internship_params
    params.require(:internship).permit(:category, :title, :description, :tipo, :status, :duration, :paid, :city, :country, :start_date, :end_date)
  end

  def set_internship
    @internship = Internship.find(params[:id])
  end
end
