class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    @product.product_sizes.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def product_params
      params.require(:product).permit(:name, :product_type, :details, product_sizes_attributes: [:id, :size, :cost, :price])
  end

  def size_params
    params.require(:product).permit(:size)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
