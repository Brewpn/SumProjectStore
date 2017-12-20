class PagesController < ApplicationController
  def index
  	@users = User.all
  	@product = Product.all
  end
end
