class ProductsController < ApplicationController
  before_action :admin_authorize, only: [:new, :create, :edit, :update, :destroy]

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product has been added"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product has been updated"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product has been removed"
      redirect_to products_path
    end
  end


private
  def product_params
    params.require(:product).permit(:name, :cost, :image, :description, :star, :agency, :craft, :distance)
  end
end
