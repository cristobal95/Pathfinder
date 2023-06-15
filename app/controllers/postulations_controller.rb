class PostulationsController < ApplicationController

  def index
    if current_user.role == false
      #student
      @postulations = Postulation.where(user: current_user)
    else
      #company
      @postulations = Postulation.where(internship_id: Internship.where(user: current_user))
=begin
     .where(selected: true)
=end

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

  private

  def postulation_params
    params.require(:postulation).permit(:content, :status)
  end

end
