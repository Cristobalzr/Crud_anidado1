class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to category_path(params[:category_id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to @product.category
  end

  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end
end
