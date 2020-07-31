class MainCategoriesController < ApplicationController

	def index
	
	end

	def new
		@cat = MainCategory.new
	end


	def create
		@cat = MainCategory.new(category_params)
	
		if @cat.save
			render 'index'
		else
			rander 'new'
		end	
	end
	def show
		@cat = MainCategory.find(params[:id])
		
	end

	private
	
	def category_params
		params.require(:main_category).permit(:name, :description)
	end

end
