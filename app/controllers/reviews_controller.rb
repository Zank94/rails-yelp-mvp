class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  def reviews_params
    params.require(:review).permit(:rating, :content)
  end
end
