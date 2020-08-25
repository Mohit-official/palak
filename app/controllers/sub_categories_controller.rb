class SubCategoriesController < ApplicationController
  
  before_action :authenticate_user!

	def index
	
	end

	def new
		@scat = SubCategory.new
	end


	def create
		@scat = SubCategory.new(sub_category_params)
	
		if @scat.save
			render 'index'
			# render 'show'
		else
			render 'new'
		end	
	end
	def show
		# @scat = SubCategory.find(params[:id])
		
	end

	private
	
	def sub_category_params
		params.require(:sub_category).permit(:name, :description, :main_category_id)
	end

end
 