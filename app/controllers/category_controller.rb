class CategoryController < ApplicationController

	def show
		@category = Category.find(params[:id])
		@product = Product.where(category_id: @category.id)
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
    	@category.update(category_params)
	end

	private
	def category_params
		params.require(:category).permit(:name)
	end
end
