class ProductSizesController < ApplicationController
  before_action :set_product_size, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:new, :create, :show, :edit, :update, :destroy]

  def index
    @product_sizes = ProductSize.all
  end

  def show
  end

  def new
    @product_size = @product.product_sizes.build
  end

  def create
    @product_size = @product.product_sizes.build(product_size_params)
    if @product_size.save
      redirect_to product_product_size_path(@product, @product_size)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product_size.update(product_size_params)
      redirect_to product_product_size_path(@product, @product_size)
    else
      render :edit
    end
  end

  def destroy
    @product_size.destroy
    redirect_to product_path(@product), notice: 'Product size was successfully destroyed.'
  end

  private

  def product_size_params
    params.require(:product_size).permit(:size, :cost, :price, :product_id)
  end

  def set_product_size
    @product_size = ProductSize.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
