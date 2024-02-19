class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to @ingredient
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to @ingredient
    else
      render :edit
    end
  end

  def destroy
    Rails.logger.debug "Entrando al método destroy"
    @ingredient.destroy
    redirect_to ingredients_path, status: :see_other
  end

  private

  def ingredient_params
      params.require(:ingredient).permit(:name, :cost_per_gram, :supplier)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

end
