class ProductsController < ApplicationController

  def show
    @product=Product.find(params[:id])
    
  end

  def edit
    @Product=Product.find(params[:id])
  end

  def update
    @Product=Product.find(params[:id])
    @product.update(product_params)
  end

private
  def product_params
    params.require(:product).permit(:title, :body, :author, :price, :in_stock, :image, :id)
  end

end