class ReviewsController < ApplicationController
  before_action :set_review, only: %i[edit update destroy]
  before_action :set_internship, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.internship = @internship
    if @review.save
      redirect_to internship_path(@internship)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to reviews_path, status: :see_other
  end
end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_internship
    @internship = Internship.find(params[:internship_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
