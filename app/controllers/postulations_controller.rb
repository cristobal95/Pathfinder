class PostulationsController < ApplicationController

  def index
    @postulation = Postulation.where(user: current_user)
  end

  def show
    @postulation = Postulation.find(params[:id])
  end

  def new
    @postulation = Postulation.new
    @internship = Internship.find(params[:internship_id])
    @postulation.internship_id = @internship.id
  end

  def create
    @postulation = Postulation.new(postulation_params)
    if @postulation.save
      redirect_to postulations
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @postulation = Postulation.find(params[:id])
  end

  def update
    @postulation = Postulation.find(params[:id])
    @postulation.update(postulation_params)
    redirect_to postulation(@postulation)
  end

  def destroy
    @postulation = Postulation.find(params[:id])
    @postulation.destroy
    redirect_to postulations, status: :see_other
  end

  def postulation_params
    params.require(:postulation).permit(:user_id, :internship_id)
  end

end
