class PostulationsController < ApplicationController

  def index
    if current_user.role == false
      #student
      @postulations = Postulation.where(user: current_user)
    else
      #company
      @postulations = Postulation.where(internship_id: Internship.where(user: current_user))

    end
  end

  def show
    @postulation = Postulation.find(params[:id])
  end


  def new
    @postulation = Postulation.new
    @internship = Internship.find(params[:internship_id])

  end

  def create
    @postulation = Postulation.new(postulation_params)
    @postulation.user_id = current_user.id
    @internship = Internship.find(params[:internship_id])
    @postulation.internship_id = @internship.id


    if @postulation.save
      redirect_to postulations_path
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
    redirect_to postulation_path(@postulation)
  end

  def destroy
    @postulation = Postulation.find(params[:id])
    @postulation.destroy
    redirect_to postulations_path, status: :see_other
  end

  def change_status_to_approved
    @postulation = Postulation.find(params[:format])
    @postulation.status = 2
    @postulation.save
  end

  def change_status_to_rejected
    @postulation = Postulation.find(params[:format])
    @postulation.status = 0
    @postulation.save
  end

  private

  def postulation_params
    params.require(:postulation).permit(:content, :status)
  end

end
