class ReviewsController < ApplicationController
  before_action :authorize, except: [:show, :index]
  before_action :admin_authorize, only: [:destroy]

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(reviews_params)
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
    @product= Product.find(params[:product_id])
    @review = Review.find(params[:id])
    if @review.update(reviews_params)
      flash[:notice] = "Review successfully updated!"
      redirect_to product_path(@review.product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Review successfully destroyed!"
    redirect_to product_path(@review.product)
  end


private
  def reviews_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
