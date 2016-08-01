class ProductsController < ApplicationController
  before_action :load_category
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /categories/:category_id/products
  def index
    render json: @category.products
  end

  # GET /categories/:category_id/products/1
  def show
    render json: @product
  end

  # POST /categories/:category_id/products
  def create
    @product = @category.products.build(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/:category_id/products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/:category_id/products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = @category.find(params[:category_id]).products.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end

    def load_category
      @category = Category.find(params[:category_id])
    end
end
