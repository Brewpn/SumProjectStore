class CommentstoproductController  < ApplicationController
	before_action :authenticate_user!

	def create
		params[:commentstoproduct][:product_id] = params[:product_id]
		params[:commentstoproduct][:user_id] = current_user.id
		Commentstoproduct.create(commentstopeuducts_params)
		redirect_to peoduct_path(params[:product_id])
	end

	private

	def commentstoproducts_params
		params.require(:commentstoproduct).permit(:user_id, :product_id, :text)
	end
end
