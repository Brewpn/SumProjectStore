class PagesController < ApplicationController
  def index
  	@users = User.all
  	@products = Product.all
  	@categorys = Category.all
  end
end
