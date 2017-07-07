class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(reviews_params)
    if @review.save
      flash[:notice] = "Review has been saved"
      redirect_to product_path(@product)
    else
      render :new
    end
  end

private
  def reviews_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
