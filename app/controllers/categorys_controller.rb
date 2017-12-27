class CategorysController < ApplicationController
	def index
		@categorys = Category.all
		@products = Product.all
	end

	def show
		@categorys = Category.find(params[:id])
		@products = Product.where(category_id: @categorys.id)
	end

	def edit
		@categorys = Category.find(params[:id])
	end

	def update
		@categorys = Category.find(params[:id])
    	@categorys.update(category_params)
	end

	private
	def category_params
		params.require(:category).permit(:name,:id)
	end
	def product_params
    params.require(:products).permit(:title, :body, :author, :price, :in_stock, :image, :id)
  	end
	end