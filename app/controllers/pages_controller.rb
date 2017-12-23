class PagesController < ApplicationController
  def index
  	@users = User.all
  	@products = Product.all
  end
end
