class ProductsController < ApplicationController
	before_action :authenticate_user!
	def index
	@products = Product.all
	end

	def new
		@product = Product.new
	end


	def create
		@product = current_user.products.new(product_params)
	
		if @product.save
				redirect_to '/products'
		else
			render 'new'
		end	
	end
	def show
		@product = Product.find(params[:id])
		
	end

	private
	
	def product_params
		params.require(:product).permit(:name, :description, :main_category_id, :sub_category_id, avatars:[])
	end

end
 