class ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_post, only: [:show, :edit, :update, :destroy]


	def show
		@comments = Commentstoproduct.where(product_id: @product.id)
	end

	def new
		@product = Product.new
	end

	def create
		@product = current_user.product.build(product_params)
		if @product.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit


	end


	def update
		@product.update(product_params)
		redirect_to root_path
	end


	def destroy
	   @product.destroy
	   redirect_to root_path
	end



	private

	def product_params
		params.require(:product).permit(:user_id, :title, :body)
	end


	def set_product
		@product = Product.find(params[:id])
	end

end